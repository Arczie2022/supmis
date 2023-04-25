<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	
		$result = $db->prepare("INSERT INTO `tbloffices`(`officeCode`, `officeName`, `campusID`, `no`) VALUES (:Code, :Name, :Campus, :no)");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"),":Campus" => POST("Campus"),  ":no" => $_SESSION["SUPMIS"]['supmis_ID']]);

		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Insert Office Error');

		$result = $db->prepare("SELECT `campusCode` FROM `tblcampus` WHERE `campusID` = :ID");
		$result->execute([":ID" => POST("Campus")]);
		$row = $result->fetch();

		$LogRemarks = POST("Name") . " has been added as office in the " . $row["campusCode"]. " campus.";
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

	echo (json_encode($arrayInsert));

	$result = null;
?>