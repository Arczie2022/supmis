<?php
	require '../../Models/Connection/connection_token.php';

	try{
	    $db->beginTransaction();
			
		$result = $db->prepare("SELECT `poCode`, `DRCode`, `tblsupplydesc`.`chartID_SPMO`, `chartCode`, `chartName`, `Consumable`, `Warranty`, `IsReplace`, `replaceParts`, `stockAvailable`, `supplyUnit`, `supplyPrice`, `supplyDesc`, `supplyPurpose` FROM `tblstock` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_SPMO` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` WHERE `tblsupplydesc`.`descID` = :ID"); 
		$result->execute([":ID" => POST("DescID")]);
		$row = $result->fetch();

		$poCode = $row["poCode"];
		$DRCode = $row["DRCode"];
		$chart = $row["chartName"]." (" .$row["chartCode"]. ")";
		$Consumable = $row["Consumable"];
		$Warranty = $row["Warranty"];
		$IsReplace = $row["IsReplace"];
		$replaceParts = $row["replaceParts"];
		$stockAvailable = $row["stockAvailable"];
		$supplyUnit = $row["supplyUnit"];
		$supplyPrice = $row["supplyPrice"];
		$supplyDesc = $row["supplyDesc"];
		$supplyPurpose = $row["supplyPurpose"];

		require_once '../../Models/Main/UpdateLogsQuery.php';
		$replaceOld = $IsReplace == "1" ? "Replacement Parts" : "New Set of Item";
		$replaceNew = POST("Replace") == "1" ? "Replacement Parts" : "New Set of Item";
		$ArrayRemarks = updateLogRemarks(array($poCode, $DRCode, $chart, $Consumable, $Warranty, $replaceOld, $replaceParts, $stockAvailable, $supplyUnit, $supplyPrice, $supplyDesc, $supplyPurpose), array(POST("POCode"), POST("DRNo"), POST("ChartName"), POST("Type"), POST("Warranty"), $replaceNew, POST("ReplaceParts"), POST("Stock"), POST("Unit"), POST("Price"), POST("Description"), POST("Purpose")), array("PO No", "DR/SI No", "Chart of Account", "Type", "Warranty Period (Month)", "Replace", "Parts to be Replace", "Stocks", "Unit", "Price", "Description", "Purpose"), POST("DescID"));

		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) {
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,3,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

		if (count($ArrayRemarks) > 0){
			$params = array(':Unit' => POST("Unit"), ':SupplyDesc' => POST("Description"), ':Purpose' => POST("Purpose"), ':Price' => POST("Price"), ':IsReplace' => POST("Replace"), ':ReplaceParts' => POST("ReplaceParts"), ':Consumable' => POST("Type"), ':Warranty' => POST("Warranty"), ':Chart' => POST("Chart"), ':Available' => POST("Stock"), ':Stock' => POST("Stock"), ':PONo' => POST("PONo"), ':DR' => POST("DRNo"), ':DescID' => POST("DescID"));
			$result = $db->prepare("UPDATE `tblsupplydesc` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` SET `supplyUnit` = :Unit, `supplyDesc` = :SupplyDesc, `supplyPurpose` = :Purpose, `supplyPrice` = :Price, `IsReplace` = :IsReplace, `replaceParts` = :ReplaceParts, `Consumable` = :Consumable, `Warranty` = :Warranty, `chartID_SPMO` = :Chart, `stockAvailable` = :Available, `stockBalance` = :Stock, `poID` = :PONo, `DRCode` = :DR WHERE `stockAvailable` = `stockBalance` AND `tblsupplydesc`.`descID` = :DescID"); 
			$result->execute($params);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('cantedit');
		}

	    $db->commit();
	    $arrayInfo[] = array("message" => "success");
	}
	catch(Exception $e){
	    $arrayStatus = [];
	    $db->rollBack();
	    if ($e->getMessage() == "cantedit"){
			$arrayInfo[] = array('message' => 'cantedit', "supply" => POST("Supply"), "PONo" => POST("POCode"));
		}else{
		    $arrayInfo[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
		}
	}

	jsEncode($arrayInfo);

?>