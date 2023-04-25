<?php
	require '../../Models/Connection/connection_token.php';

	session_start();
	try{
	    $db->beginTransaction();
	    
		$params = array(":Code"=> POST("Code"), ":Name"=> POST("Name"), ":Property"=> POST("Property"), ":Type"=> POST("Type"), ":No"=> $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tblsupply`(`supplyCode`, `supplyName`, `supplyProperty`, `supTypeID`, `no`) VALUES (:Code, :Name, :Property, :Type, :No);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Insert Supply');
		
		$LogRemarks = POST("Name")." Added as New Item of Supply";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '0,1,2,3,4,5,6,7,8,9,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 2, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

		$db->commit();
		$arraySupply[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arraySupply[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}
	jsEncode($arraySupply);

	$result = null;

?>