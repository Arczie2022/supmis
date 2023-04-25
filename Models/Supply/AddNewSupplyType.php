<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	try{
	    $db->beginTransaction();
	 
		$result = $db->prepare("INSERT INTO `tblsupplytype`(`supTypeCode`, `supTypeName`, `No`) VALUES (:Code, :Name, :no);");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"), ":no" => $_SESSION["SUPMIS"]["supmis_ID"]]);
		
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Insert Type Error');
   		
		$LogRemarks = POST("Name")." Added as New Type of Supply";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 2, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

   		$db->commit();
		
		$arrayAddType[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayAddType[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}
	jsEncode($arrayAddType);
	
	$result = null;	

?>