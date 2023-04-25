<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `srID`, `supplyCode`, `supplyName`, `supplyProperty`, SUM(`srBalance`) as `balance` FROM `tblstockroom` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstockroom`.`supplyID` WHERE `warehouseID` = :ID GROUP BY `tblstockroom`.`supplyID`");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arraySupply[] = array("message" => "success", 'ID' => $row["srID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Property' => $row["supplyProperty"], 'Balance' => $row["balance"]);
	}
	
	$result = null;

	jsEncode($arraySupply);
?>