<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `DRDate` FROM `tblstock` WHERE `DRCode` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayDR[] = array("message" => "success", 'Date' => $row["DRDate"]);
	}
	if (empty($arrayDR)) $arrayDR[] = array("message" => "success", 'Date' => "");

	jsEncode($arrayDR);
?>