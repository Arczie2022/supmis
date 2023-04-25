<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`warehouseID`) as `count` FROM `tblwarehouse` WHERE `warehouseCode` = :Code AND NOT `warehouseID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`warehouseID`) as `count` FROM `tblwarehouse` WHERE `warehouseName` = :Name AND NOT `warehouseID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();

	$arrayVerify[] = array('message' => 'success','Code' => $rowCode["count"], 'Name' => $rowName["count"]);

	jsEncode($arrayVerify);

?>