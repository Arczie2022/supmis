<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `DRCode`, `DRDate` FROM `tblstock` WHERE `DRCode` LIKE :ID GROUP BY `DRCode`");
	$result->execute([":ID" => "%".POST("ID")."%"]);

	while($row = $result->fetch()){
		$arrayDR[] = array("message" => "success", 'ID' => $row["DRCode"], 'Code' => $row["DRDate"], 'Name' => $row["DRCode"]);
	}

	jsEncode($arrayDR);

	$result = null;
?>