<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `warehouseID`, `warehouseCode`, `warehouseName` FROM `tblwarehouse`");
	$result->execute();
	while($row = $result->fetch()){
		$arrayWarehouse[] = array('message' => 'success', 'ID' => $row["warehouseID"], 'Code' => $row["warehouseCode"], 'Name' => $row["warehouseName"]);
	}
	jsEncode($arrayWarehouse);
?>