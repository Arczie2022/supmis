<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `barID`, `barCode` FROM `tblbarcode`");
	$result->execute();
	$arrayBarCode = [];
	while($row = $result->fetch()){
		$arrayBarCode[] = array('ID' => $row["barID"], 'Code' => $row["barCode"]);
	}
	$result = null;
	jsEncode($arrayBarCode);
?>