<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT  `supTypeCode`, `supTypeName` FROM `tblsupplytype` WHERE `supTypeID` = :ID");
	    $result->execute([":ID" => POST("ID")]);
	    $row = $result->fetch();
	    $Code = $row["supTypeCode"];
	    $Name = $row["supTypeName"];

		$result = $db->prepare("UPDATE `tblsupplytype` SET `supTypeCode`= :Code,`supTypeName`= :Name  WHERE `supTypeID` = :ID");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"), ":ID" => POST("ID")]);
		
		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($Code, $Name), array(POST("Code"), POST("Name")), array("Supply Type Code", "Supply Type Description"), POST("ID"));
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

		$db->commit();
		$arrayUpdateType[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayUpdateType[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}

	jsEncode($arrayUpdateType);
	
	$result = null;	

?>