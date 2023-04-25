<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	
	    $result = $db->prepare("SELECT `officeCode`, `officeName`, `campusCode`, (SELECT `campusCode` FROM `tblcampus` WHERE `campusID` = :campus) as `newCampus` FROM `tbloffices` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `officeID` = :office");
	    $result->execute([":office" => POST("ID"), ":campus" => POST("Campus")]);
	    $row = $result->fetch();

	    $officeCode = $row["officeCode"];
	    $officeName = $row["officeName"];
	    $oldCampus = $row["campusCode"] . " campus";
	    $newCampus = $row["newCampus"] . " campus";

		$result = $db->prepare("UPDATE `tbloffices` SET `officeCode`= :Code,`officeName`= :Name,`campusID`= :Campus WHERE `officeID` = :ID");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"),":Campus" => POST("Campus"),  ":ID" => POST("ID")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($officeCode, $officeName, $oldCampus), array(POST("Code"), POST("Name"), $newCampus), array("Code", "Name", "Campus"), POST("ID"));
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

	    $db->commit();
		$arrayUpdate[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayUpdate[] = array('message' => 'Connection Error');
	}
	echo (json_encode($arrayUpdate));

	$result = null;
?>