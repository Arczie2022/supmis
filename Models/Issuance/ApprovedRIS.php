<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	
		$params = array(":ID_1"=> POST("ID"), ":ID_2"=> POST("ID"), ":Officer" => $_SESSION["SUPMIS"]["supmis_ID"], ":no_1" => $_SESSION["SUPMIS"]["supmis_ID"], ":no_2" => $_SESSION["SUPMIS"]["supmis_ID"], ":Status" => POST("Status"));
		$result = $db->prepare("UPDATE `tblris`, `tblrisdet` SET `officerID` = :Officer,`risStatus` = :Status, `tblris`.`no` = :no_1, `tblrisdet`.`no` = :no_2 WHERE `tblris`.`risID` = :ID_1 AND `tblrisdet`.`risID` = :ID_2");
		$result->execute($params);

		$result = $db->prepare("SELECT `risCode`, `emp`.`accountID`, `emp`.`accountName` as `employee`, IFNULL(`off`.`accountName`, '-') as `officer` FROM `tblris` INNER JOIN `tblaccount` `emp` ON `emp`.`accountID` = `tblris`.`employeeID` LEFT JOIN `tblaccount` `off` ON `off`.`accountID` = `tblris`.`officerID` WHERE `risID` = :ID");
		$result->execute([":ID" => POST("ID")]);
		$row = $result->fetch();

		$risCode = $row["risCode"];
		$employee = $row["employee"];
		$employeeID = $row["accountID"];
		$officer = $row["officer"];

		$Status = POST("Status") == "4" ? " approved " : " disapproved ";

		$LogRemarks = $officer. " has ".$Status." the RIS (" . $risCode . ") of " . $employee;
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $employeeID, ':ViewAccess' => '1,2,3,5,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 5, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

	    $db->commit();
		$arrayApproved[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayApproved[] = array('message' => 'Connection Error');
	}

	echo (json_encode($arrayApproved));

?>
