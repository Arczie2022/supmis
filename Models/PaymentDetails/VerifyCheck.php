<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`paymentID`) as `count` FROM `tblpayment` WHERE `paymentReceipt` = :Receipt AND NOT `paymentID` = :ID");
	$result->execute([":Receipt"=>POST("Receipt"), ":ID"=>POST("ID")]);
	$row = $result->fetch();

	$arrayCheck[] = array('Check' => $row["count"]);

	echo (json_encode($arrayCheck));

?>