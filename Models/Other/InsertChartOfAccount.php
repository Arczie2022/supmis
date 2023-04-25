<?php
	require '../../Models/Connection/connection_token.php';
	
	session_start();

	try{
	    $db->beginTransaction();

		$result = $db->prepare("INSERT INTO `tblchartaccount`(`chartCode`, `chartName`, `chartLegend`, `chartLife`, `no`) VALUES (:Code, :Name, :Legend, :Life, :no)");
		$result->execute([":Code" => POST("Code"), ":Name" => POST("Name"), ":Life" => POST("Life"), ":Legend" => POST("Legend"), ":no" => $_SESSION["SUPMIS"]['supmis_ID']]);

		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Insert Chart of Account Error');

		$LogRemarks = "";

	    $db->commit();
		$arrayInsert[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayInsert[] = array('message' => 'Connection Error');
	}

	jsEncode($arrayInsert);

	$result = null;
?>