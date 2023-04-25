<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblsupply`.`supplyID`, `supplyCode`, `supplyName`, `supplyProperty`, IFNULL(SUM(`stockBalance`),0) as `stockAvailable`  FROM `tblsupply` LEFT JOIN `tblstock` ON `tblstock`.`supplyID` = `tblsupply`.`supplyID` GROUP BY `tblsupply`.`supplyID`"); 
	$result->execute();

	while($row = $result->fetch()){
		$stock = $row["stockAvailable"] == "0" ? "No Stock" : $row["stockAvailable"];
		$arraySupplyStock[] = array('ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Property' => $row["supplyProperty"], 'Stock' => $stock);
	}
	$result = null;

	jsEncode($arraySupplyStock);
?>