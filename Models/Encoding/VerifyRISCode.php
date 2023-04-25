<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(*) as `count` FROM `tblris` WHERE `risCode` = :RIS");
	$result->execute([":RIS"=>POST("RIS")]);
	$rowRIS = $result->fetch();

	$arrayCode[] = array('RIS' => $rowRIS["count"]);

	echo (json_encode($arrayCode));

?>