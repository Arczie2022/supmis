<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poID`, `poCode`, `poDateReceipt`, `fundName`, `fundCode`, `supplierName`, IFNULL(`papName`, '') as `papName` FROM `tblpo` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` LEFT JOIN `tblpap` ON `tblpap`.`papID` = `tblpo`.`papID` WHERE YEAR(`poDateReceipt`) = :Period");
	$result->execute([":Period" => POST("Period")]);
	
	while($row = $result->fetch()){
		$arrayPO[] = array("message" => "success", 'ID' => $row["poID"], 'Code' => $row["poCode"], 'Date' => $row["poDateReceipt"], 'Fund' => $row["fundName"] . " (" . $row["fundCode"] . ")", 'Supplier' => $row["supplierName"], 'MFO' => $row["papName"]);
	}

	jsEncode($arrayPO);

?>