<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`supplyID`) as `count` FROM `tblsupply` WHERE `supplyCode` = :Code AND NOT `supplyID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`supplyID`) as `count` FROM `tblsupply` WHERE `supplyName` = :Name AND NOT `supplyID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`supplyID`) as `count` FROM `tblsupply` WHERE `supplyProperty` = :Property AND NOT `supplyID` = :ID");
	$result->execute([":Property"=>POST("Property"), ":ID"=>POST("ID")]);
	$rowProperty = $result->fetch();

	$arraySupply[] = array('Code' => $rowCode["count"], 'Name' => $rowName["count"], 'Property' => $rowProperty["count"]);

	echo (json_encode($arraySupply));

?>