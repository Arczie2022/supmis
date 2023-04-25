<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	
	    $result = $db->prepare("SELECT `warehouseCode`, `warehouseName` FROM `tblwarehouse` WHERE `warehouseID` = :ID");
	    $result->execute([":ID" => POST("ID")]);
	    $row = $result->fetch();
	    $OldCode = $row["warehouseCode"];
	    $OldName = $row["warehouseName"];

		$result = $db->prepare("UPDATE `tblwarehouse` SET `warehouseCode`= :Code,`warehouseName`= :Name WHERE `warehouseID` = :ID");
		$result->execute([":ID" => POST("ID"), ":Code" => POST("Code"), ":Name" => POST("Name")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($OldCode, $OldName), array(POST("Code"), POST("Name")), array("Code", "Name"), POST("ID"));
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,2,3,4,5,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
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
	}

	echo (json_encode($arrayUpdate));

	$result = null;
?>