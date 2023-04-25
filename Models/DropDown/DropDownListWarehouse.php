<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `warehouseID`, `warehouseCode`, `warehouseName` FROM `tblwarehouse`");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayWarehouse[] = array('ID' => $row["warehouseID"], 'Code' => $row["warehouseCode"], 'Name' => $row["warehouseName"]);	
	}
	$result = null;
?>