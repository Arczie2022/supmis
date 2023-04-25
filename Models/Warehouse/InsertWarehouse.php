<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	
		$result = $db->prepare("INSERT INTO `tblwarehouse`(`warehouseCode`, `warehouseName`, `no`) VALUES (:Code, :Name, :no)");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"), ":no" => $_SESSION["SUPMIS"]['supmis_ID']]);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Insert Error');

		$LogRemarks = POST("Name") . " has been added in the Warehouse's Database";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,2,3,4,5,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 2, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

	    $db->commit();
		$arrayInsert[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayInsert[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}

	jsEncode($arrayInsert);

	$result = null;
?>