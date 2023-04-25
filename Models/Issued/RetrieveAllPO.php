<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poID`, `poCode`, `poDateReceipt` FROM `tblpo`");
	$result->execute();

	while($row = $result->fetch()){
		$arrayPO[] = array("message" => "success", 'ID' => $row["poID"], 'Code' => $row["poCode"], 'Date' => $row["poDateReceipt"]);
	}

	jsEncode($arrayPO);
	$result = null;
?>