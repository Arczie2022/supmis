<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT `accountUsername`, `accountName`, `accountPosition`, `officeName`, (SELECT `officeName` FROM `tbloffices` WHERE `officeID` = :Office) as `oldOffice` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountID` = :ID");
	    $result->execute([":ID" => POST("ID"), ":Office" => POST("Office")]);
	    $row = $result->fetch();

	    $code = $row["accountUsername"];
	    $name = $row["accountName"];
	    $position = $row["accountPosition"];
	    $newOffice = $row["officeName"];
	    $oldOffice = $row["oldOffice"];

		$result = $db->prepare("UPDATE `tblaccount` SET `accountName`= :Name,`accountPosition`= :Position, `officeID`= :Office WHERE `accountID` = :ID");
		$result->execute([":Name" => POST("Name"), ":Position" => POST("Position"), ":Office" => POST("Office"), ":ID" => POST("ID")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($name, $position, $oldOffice), array(POST("Name"), POST("Position"), $newOffice), array("Name", "Position", "Office"), POST("ID"));
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => POST("ID"), ':ViewAccess' => '1,2,3,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

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