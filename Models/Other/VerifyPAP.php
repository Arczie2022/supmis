<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`papID`) as `count` FROM `tblpap` WHERE `papCode` = :Code AND NOT `papID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`papID`) as `count` FROM `tblpap` WHERE `papName` = :Name AND NOT `papID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();


	$arrayVerify[] = array('message' => 'success','Code' => $rowCode["count"], 'Name' => $rowName["count"]);

	jsEncode($arrayVerify);

?>