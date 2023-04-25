<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`fundID`) as `count` FROM `tblfundcluster` WHERE `fundCode` = :Code AND NOT `fundID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`fundID`) as `count` FROM `tblfundcluster` WHERE `fundName` = :Name AND NOT `fundID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`fundID`) as `count` FROM `tblfundcluster` WHERE `fundLegend` = :Legend AND NOT `fundID` = :ID");
	$result->execute([":Legend"=>POST("Legend"), ":ID"=>POST("ID")]);
	$rowLegend = $result->fetch();


	$arrayVerify[] = array('message' => 'success','Code' => $rowCode["count"], 'Name' => $rowName["count"], 'Legend' => $rowLegend["count"]);

	jsEncode($arrayVerify);

?>