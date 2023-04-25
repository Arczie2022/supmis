<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`suptypeID`) as `count` FROM `tblsupplytype` WHERE `suptypeCode` = :Code AND NOT `suptypeID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`suptypeID`) as `count` FROM `tblsupplytype` WHERE `suptypeName` = :Name AND NOT `suptypeID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();

	$arraySuptype[] = array('Code' => $rowCode["count"], 'Name' => $rowName["count"]);

	echo (json_encode($arraySuptype));

?>