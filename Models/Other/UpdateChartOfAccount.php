<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	try{
	    $db->beginTransaction();
	
	    $result = $db->prepare("SELECT `chartCode`, `chartName`, `chartLegend`, `chartLife` FROM `tblchartaccount` WHERE  `chartID` = :ID");
	    $result->execute([":ID" => POST("ID")]);
	    $row = $result->fetch();
	    $OldCode = $row["chartCode"];
	    $OldName = $row["chartName"];
	    $OldLegend = $row["chartLegend"];
	    $OldLife = $row["chartLife"];

		$result = $db->prepare("UPDATE `tblchartaccount` SET `chartCode`= :Code,`chartName`= :Name,`chartLegend`= :Legend,`chartLife`= :Life WHERE `chartID`= :ID");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"), ":Life" => POST("Life"), ":Legend" => POST("Legend"), ":ID" => POST("ID")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($OldCode, $OldName, $OldLegend, $OldLife), array(POST("Code"), POST("Name"), POST("Legend"), POST("Life")), array("Code", "Name", "Legend", "Useful Life"), POST("ID"));
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,3,4,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
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

	jsEncode($arrayUpdate);

	$result = null;
?>