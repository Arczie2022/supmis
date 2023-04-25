<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$Type = POST("Type");
	$Status = POST("Status");
	
	$return = -1; $reissue = -1; $type = 0;

	if($Type == "Employee"){
		$return = 0;
		$reissue = 0;
		$logDesc = " has been returned to Employee.";
	}
	if($Type == "Department"){
		$return = 1;
		$reissue = 1;
		$logDesc = " has been forwarded to Supply Coordinator.";
	}
	if($Type == "SPMO"){
		$return = 2;
		$reissue = 2;
		$logDesc = " has been forwarded to SPMO Main.";
	}
	if($Type == "Disposal"){
		$return = 3;
		$reissue = 4;
		$logDesc = " has been forwarded for disposal.";
	}
	if($Type == "Warehouse"){
		$return = 5;
		$reissue = 3;
		$logDesc = " has been forwarded to warehouse.";
	}
	if($Type == "Reissue"){
		$return = 6;
		$reissue = 5;
		$logDesc = " has been reissued to another employee.";
	}
	if($Type == "Repair"){
		$return = 7;
		$reissue = 1;
		$logDesc = " has been forwarded for repair.";
	}

    $dateRequest =  date("Y-m-d");

    try{
        $db->beginTransaction();

        if($return == -1 || $reissue == -1)
			throw new Exception('Connection Error');

		$result = $db->prepare("SELECT `employeeID`, `accountName`, `supplyName`, `reissueProperty` FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreturn`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tblsupply` ON `tblreissue`.`supplyID` = `tblsupply`.`supplyID` WHERE `tblreturn`.`returnID` = :ID");
		$result->execute([":ID" => POST("ID")]);
		$row = $result->fetch();
		$LogsEmpID = $row["employeeID"];
		$LogsEmpName = $row["accountName"];
		$LogsSupply = $row["supplyName"];
		$LogsProperty = $row["reissueProperty"];
		$LogsStatus = $Status == "1" ? "Working" : "Not Working";
		$LogsType = $Type == "Disposal" ? 8 : 7;
		$LogsType = $Type == "Repair" ? 11 : $LogsType;
		$LogRemarks = $LogsSupply . " of the Mr/Ms. " . $LogsEmpName . " (". $LogsProperty .") with the status of " . $LogsStatus . $logDesc;
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $LogsEmpID, ':ViewAccess' => '1,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, ".$LogsType.", 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

	    $params = array(":return"=>$return, ":WorkStatus"=>$Status, ":Remarks"=> POST("Remarks"), ":ID"=> POST("ID"), ":dateRequest"=> $dateRequest, ":Officer"=> $_SESSION["SUPMIS"]["supmis_ID"], ":no"=> $_SESSION["SUPMIS"]["supmis_ID"]);

		$result = $db->prepare("INSERT INTO `tblreturn`(`reissueID`, `isReturn`, `returnDate`, `returnIsWork`, `returnRemarks`, `officerID`, `no`) SELECT `reissueID`, :return, :dateRequest, :WorkStatus, :Remarks, :Officer, :no FROM `tblreturn` WHERE `returnID` = :ID");
		$result->execute($params);

		$result = $db->prepare("UPDATE `tblreissue` SET `reissueStatus` = :status WHERE `reissueID` = (SELECT `reissueID` FROM `tblreturn` WHERE `returnID` = :ID GROUP BY `reissueID`)");
		$result->execute([":status" => $reissue, ":ID" => POST("ID")]);

		if ($return == 5 && $reissue == 3){
			$result = $db->prepare("SELECT `warehouseID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `accountID` = :ID");
			$result->execute([":ID" => $_SESSION["SUPMIS"]["supmis_ID"]]);
			$row = $result->fetch();
			$warehouseID = $row["warehouseID"];

			$result = $db->prepare("INSERT INTO `tblwarehousedet`(`warehouseID`, `reissueID`, `returnID`, `officerID`, `No`) SELECT :Warehouse, `reissueID`, `returnID`, :officer, :no FROM `tblreturn` WHERE `returnID` = :ID");
			$result->execute([":Warehouse" => $warehouseID, ":ID" => POST("ID"), ":officer" => $_SESSION["SUPMIS"]["supmis_ID"], ":no" => $_SESSION["SUPMIS"]["supmis_ID"]]);
		}

        $db->commit();
		$arrayUpdateReturn[] = array('message' => 'success');
    }
    catch(Exception $e){
		$arrayUpdateReturn[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
        $db->rollBack();
    }
    
	echo (json_encode($arrayUpdateReturn));
	$result = null;
?>