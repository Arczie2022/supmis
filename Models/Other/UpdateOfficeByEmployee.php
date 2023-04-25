<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	
	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT `accountName`, `officeName`, (SELECT `officeName` FROM `tbloffices` WHERE `officeID` = :Office) as `oldOffice` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountID` = :Employee");
		$result->execute([":Employee" => POST("Employee"), ":Office" => POST("Office")]);
		$row = $result->fetch();
		$Employee = $row["accountName"];
		$newOffice = $row["officeName"];
		$oldOffice = $row["oldOffice"];

		$result = $db->prepare("UPDATE `tblaccount` SET `officeID` = :Office WHERE `accountID` = :Employee");
		$result->execute([":Employee" => POST("Employee"), ":Office" => POST("Office")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($oldOffice), array($newOffice), array("Office"), POST("Employee"), " of the employee: " . $Employee);
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => POST("Employee"), ':ViewAccess' => '1,2,3,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}
		
		$db->commit();
		$arrayEmpOffice[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayEmpOffice[] = array("message" => "Connection Error");
	}

	jsEncode($arrayEmpOffice);
?>