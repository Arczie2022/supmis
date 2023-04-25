<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	try{
	    $db->beginTransaction();
		
		if (POST("Component") == "0"){

			$params = array(":Supply" => POST("Equipment"), ":Unit" => POST("Unit"), ":Description" => POST("Description"), ":Purpose" => POST("Purpose"), ":Price" => POST("Cost"), ":Chart_SPMO" => POST("Chart"), ":Chart_Acc" => POST("Chart"), ":No" => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tblsupplydesc`(`supplyID`, `supplyUnit`, `supplyDesc`, `supplyPurpose`, `supplyPrice`, `chartID_SPMO`, `chartID_Acc`, `no`) VALUES (:Supply, :Unit, :Description, :Purpose, :Price, :Chart_SPMO, :Chart_Acc, :No);");
			$result->execute($params);

			$descID = $db->lastInsertId();

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Supply Desc Error');

			$params = array(":Building" => POST("Building"), ":Supply" => POST("Equipment"), ":DescID" => $descID, ":Stock" => POST("Stock"), ":No" => $_SESSION["SUPMIS"]["supmis_ID"]);
		    $result = $db->prepare("INSERT INTO `tblcomponent`(`mainSupply`, `componentSupply`, `descID`, `componentStock`, `no`) VALUES (:Building, :Supply, :DescID, :Stock, :No);");
		    $result->execute($params);

		    if($result->rowCount() == 0 || $result->rowCount() == "0")
		    	throw new Exception('Insert Component Error');

		    $result = $db->prepare("SELECT (SELECT `supplyName` FROM `tblsupply` WHERE `supplyID` = :Building) as `building`, (SELECT `supplyName` FROM `tblsupply` WHERE `supplyID` = :Equipment) as `equipment`");
		    $result->execute([":Building" => POST("Building"), ":Equipment" => POST("Equipment")]);
		    $row = $result->fetch();
		    $buildingName = $row["building"];
		    $equipmentName = $row["equipment"];

		    $LogRemarks = POST("Stock")." ".POST("Unit")."/s of ".$equipmentName." have been added as a component of ".$buildingName;
		    $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		    $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 0, 0, :ViewAccess, :Encoder);");
		    $result->execute($params);
		    if($result->rowCount() == 0 || $result->rowCount() == "0")
		    	throw new Exception('Log Error');
		    
		}else{
			$result = $db->prepare("SELECT `componentStock`, `building`.`supplyName` as `buildingName`, `equipment`.`supplyName` as `equipmentName`, `supplyUnit`, `supplyDesc`, `supplyPurpose`, `supplyPrice`, `chartName`, (SELECT `chartName` FROM `tblchartaccount` WHERE `chartID` = :Chart) as `newChart` FROM `tblcomponent` INNER JOIN `tblsupply` `building` ON `building`.`supplyID` = `tblcomponent`.`mainSupply` INNER JOIN `tblsupply` `equipment` ON `equipment`.`supplyID` = `tblcomponent`.`componentSupply` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblcomponent`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `componentID` = :ID");
			$result->execute([":ID" => POST("Component"), ":Chart" => POST("Chart")]);
			$row = $result->fetch();

			$OldStock = $row["componentStock"];
			$OldBuilding = $row["buildingName"];
			$OldEquipment = $row["equipmentName"];
			$OldUnit = $row["supplyUnit"];
			$OldDesc = $row["supplyDesc"];
			$OldPurpose = $row["supplyPurpose"];
			$OldPrice = $row["supplyPrice"];
			$OldChart = $row["chartName"];
			$newChart = $row["newChart"];

			require_once '../../Models/Main/UpdateLogsQuery.php';
			
			$ArrayRemarks = updateLogRemarks(array($OldStock, $OldUnit, $OldDesc, $OldPurpose, $OldPrice, $OldChart), array(POST("Stock"), POST("Unit"), POST("Description"), POST("Purpose"), POST("Cost"), $newChart), array("Stock", "Unit", "Description", "Purpose", "Price", "Chart"), POST("Component"), $OldEquipment . " of the Building (" . $OldBuilding.")");
			for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
				$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
				$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
				$result->execute($params);
				if($result->rowCount() == 0 || $result->rowCount() == "0")
					throw new Exception('Log Error');
			}

			$params = array(":Unit" => POST("Unit"), ":Description" => POST("Description"), ":Purpose" => POST("Purpose"), ":Price" => POST("Cost"), ":Chart" => POST("Chart"), ":Component" => POST("Component"));
			$result = $db->prepare("UPDATE `tblsupplydesc` SET `supplyUnit`= :Unit, `supplyDesc`= :Description, `supplyPurpose`= :Purpose, `supplyPrice`= :Price, `chartID_Acc`= :Chart  WHERE `descID` = (SELECT `descID` FROM `tblcomponent` WHERE `componentID` = :Component)");
			$result->execute($params);

		    $params = array(':Component' => POST("Component"), ':Stock' => POST("Stock"));
		    $result = $db->prepare("UPDATE `tblcomponent` SET `componentStock`= :Stock WHERE `componentID` = :Component");
		    $result->execute($params);

		}

	    $db->commit();
	    $arrayComponent[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayComponent[] = array("message" => "Connection Error");
	}
	jsEncode($arrayComponent);
	$result = null;
?>