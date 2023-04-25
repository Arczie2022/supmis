<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	try{
	    $db->beginTransaction();
	
		$hash = password_hash(POST("ID"), PASSWORD_DEFAULT);

		$result = $db->prepare("UPDATE `tblaccount` SET `accountPassword` = :pass WHERE `accountUsername` = :ID");
		if($result->execute([":ID"=>POST("ID"),":pass"=>$hash])){
			if ($result->rowCount() <= 0)
				$arrayPassword[] = array('message' => 'user not found');
		}
		else
			throw new Exception("Reset Password Error");

		$result = $db->prepare("SELECT `accountID`, `accountName` FROM `tblaccount` WHERE `accountUsername` = :ID");
		$result->execute([":ID" => POST("ID")]);
		$row = $result->fetch();
		$accountID = $row["accountID"];
		$accountName = $row["accountName"];

		$LogRemarks = "The password of  ". $accountName . " has been reset.";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $accountID, ':ViewAccess' => '1,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');
			
	 	$db->commit();
		$arrayPassword[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayPassword[] = array('message' => 'Connection Error');
	}

	echo (json_encode($arrayPassword));

?>