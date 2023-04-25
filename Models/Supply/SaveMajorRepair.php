<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	try{
	    $db->beginTransaction();
		
		$BuildingID = POST("BuildingID");
		$RepairBuildingID = POST("RepairBuildingID");
		$ContractDate = POST("ContractDate");
		$ContractNo = POST("ContractNo");
		$Contractor = POST("Contractor");
		$StartDateRepair = POST("StartDateRepair");
		$EndDateRepair = POST("EndDateRepair");
		$Description = POST("Description");
		$Chart = POST("Chart");
		$Fund = POST("Fund");
		$PAP = POST("PAP");
		$NatureRepair = POST("NatureRepair");
		$Amount = POST("Amount");
		$officer = $_SESSION["SUPMIS"]["supmis_ID"];

		if($RepairBuildingID == "0" || $RepairBuildingID == 0){
			$result = $db->prepare("SELECT `poID` FROM `tblpo` WHERE `poCode` = :ID");
			$result->execute([":ID" => $ContractNo]);
			$row = $result->fetch();
			$poID = $row["poID"];
			
			if($result->rowCount() == 0 || $result->rowCount() == "0"){
				$result = $db->prepare("INSERT INTO `tblpo`(`poCode`, `poDateReceipt`, `fundID_SPMO`, `fundID`, `supplierID`, `papID`, `no`) VALUES (:ContractNo, :ContractDate, :Fund_SPMO, :Fund_Acc, :Contractor, :PAP, :no);");
				$result->execute([":ContractNo" => $ContractNo, ":ContractDate" => $ContractDate, ":Fund_SPMO" => $Fund, ":Fund_Acc" => $Fund, ":Contractor" => $Contractor, ":PAP" => $PAP, ":no" => $officer]);

				if($result->rowCount() == 0 || $result->rowCount() == "0")
					throw new Exception('error insert PO');

				$poID = $db->lastInsertId();
			}

			$params = array(":BuildingID" => $BuildingID, ":Description" => $Description, ":StartDateRepair" => $StartDateRepair, ":EndDateRepair" => $EndDateRepair, ":NatureRepair" => $NatureRepair, ":Amount" => $Amount, ":poID" => $poID, ":Chart_SPMO" => $Chart, ":Chart_Acc" => $Chart, ":no" => $officer);
			$result = $db->prepare("INSERT INTO `tblbuildingrepair`(`buildingID`, `majorDesc`, `repairStart`, `repairEnd`, `repairNature`, `repairAmount`, `poID`, `chartID_SPMO`, `chartID_Acc`, `no`) VALUES (:BuildingID, :Description, :StartDateRepair, :EndDateRepair, :NatureRepair, :Amount, :poID, :Chart_SPMO, :Chart_Acc, :no);");
			$result->execute($params);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Error Insert Building Repair');

			$result = $db->prepare("SELECT `supplyName` FROM  `tblsupply` WHERE `supplyID` = :ID");
			$result->execute([":ID" => $BuildingID]);
			$row = $result->fetch();
			$BuildingName = $row["supplyName"];

			$LogRemarks = $Description . " as Major Repair has been created in the building of ".$BuildingName;
			$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 11, 0, :ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');

		}else{
			$result = $db->prepare("SELECT `majorDesc`, `repairStart`, `repairEnd`, `repairAmount`, `chartName` as `oldChart`, (SELECT `chartName` FROM `tblchartaccount` WHERE `chartID` = :Chart) as `newChart`  FROM `tblbuildingrepair` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblbuildingrepair`.`chartID_Acc` WHERE `majorID` = :ID");
			$result->execute([":ID" => $RepairBuildingID, ":Chart" => $Chart]);
			$row = $result->fetch();
			$OldDesc = $row["majorDesc"];
			$OldStart = $row["repairStart"];
			$OldEnd = $row["repairEnd"];
			$OldAmount = $row["repairAmount"];
			$OldChart = $row["oldChart"];
			$NewChart = $row["newChart"];

			require_once '../../Models/Main/UpdateLogsQuery.php';
			
			$ArrayRemarks = updateLogRemarks(array($OldDesc, $OldAmount, $OldChart, $OldStart, $OldEnd), array($Description, $Amount, $NewChart, $StartDateRepair, $EndDateRepair), array("Major Description", "Amount", "Chart of Account", "Start Repair Date", "End Repair Date"), $RepairBuildingID);
			for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
				$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
				$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
				$result->execute($params);
				if($result->rowCount() == 0 || $result->rowCount() == "0")
					throw new Exception('Log Error');
			}

			$params = array(":Description" => $Description, ":startDate" => $StartDateRepair, ":endDate" => $EndDateRepair, ":nature" => $NatureRepair, ":amount" => $Amount, ":Chart" => $Chart, ":ID" => $RepairBuildingID); 
			$result = $db->prepare("UPDATE `tblbuildingrepair` SET `majorDesc` = :Description, `repairStart` = :startDate, `repairEnd` = :endDate, `repairNature` = :nature, `repairAmount` = :amount, `chartID_Acc` = :Chart WHERE `majorID` = :ID");
			$result->execute($params);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Error Update Major Repair');
		}

	    $db->commit();
	    $arrayRepair[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayRepair[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}

	jsEncode($arrayRepair);

?>