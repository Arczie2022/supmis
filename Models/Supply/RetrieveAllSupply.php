<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyID`, `supplyCode`, `supplyName`, `supplyProperty` FROM `tblsupply`");
	$result->execute();

	while($row = $result->fetch()){
		$arraySupply[] = array('ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Property' => $row["supplyProperty"]);
	}
	jsEncode($arraySupply);
	$result = null;
?>