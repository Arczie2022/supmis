<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`accountID`) as `count` FROM `tblaccount` WHERE `accountUsername` = :Code AND NOT `accountID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`accountID`) as `count` FROM `tblaccount` WHERE `accountName` = :Name AND NOT `accountID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();


	$arrayVerify[] = array('message' => 'success', 'Code' => $rowCode["count"], 'Name' => $rowName["count"]);

	echo (json_encode($arrayVerify));

?>