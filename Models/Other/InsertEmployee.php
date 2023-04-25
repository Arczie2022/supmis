<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	
		$hash = password_hash(POST("Code"), PASSWORD_DEFAULT);

		$result = $db->prepare("INSERT INTO `tblaccount`(`accountUsername`, `accountPassword`, `accountName`, `accountPosition`, `levelID`, `officeID`, `no`) VALUES (:Code, :Pass, :Name, :Position, '7', :Office, :no)");
		$result->execute([":Code" => POST("Code"), ":Pass" => $hash, ":Name" => POST("Name"), ":Position" => POST("Position"), ":Office" => POST("Office"), ":no" => $_SESSION["SUPMIS"]['supmis_ID']]);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Insert Account Error');

		$LogRemarks = POST("Name") . " has been added in the Employee Database";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 2, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');
		
	    $db->commit();

		$arrayInsert[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayInsert[] = array('message' => 'Connection Error');
	}

	jsEncode($arrayInsert);

	$result = null;
?>