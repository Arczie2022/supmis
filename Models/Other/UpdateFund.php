<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT `fundCode`, `fundName`, `fundLegend` FROM `tblfundcluster` WHERE `fundID` = :ID");
	    $result->execute([":ID" => POST("ID")]);
	    $row = $result->fetch();
	    $OldCode = $row["fundCode"];
	    $OldName = $row["fundName"];
	    $OldLegend = $row["fundLegend"];
	
		$result = $db->prepare("UPDATE `tblfundcluster` SET `fundCode`= :Code,`fundName`= :Name, `fundLegend`= :Legend WHERE `fundID` = :ID");
		$result->execute([":ID" => POST("ID"), ":Code" => POST("Code"), ":Name" => POST("Name"), ":Legend" => POST("Legend")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($OldCode, $OldName, $OldLegend), array(POST("Code"), POST("Name"), POST("Legend")), array("Code", "Name", "Legend"), POST("ID"));
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,2,3,4,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
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
	    $arrayUpdate[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}
	echo (json_encode($arrayUpdate));

	$result = null;
?>