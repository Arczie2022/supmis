<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`officeID`) as `count` FROM `tbloffices` WHERE `officeCode` = :Code AND NOT `officeID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`officeID`) as `count` FROM `tbloffices` WHERE `officeName` = :Name AND NOT `officeID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();


	$arrayVerify[] = array('message' => 'success', 'Code' => $rowCode["count"], 'Name' => $rowName["count"]);

	echo (json_encode($arrayVerify));

?>