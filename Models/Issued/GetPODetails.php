<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `papName`, `supplierName`, `fundID`, `DRDate`, `DRCode` FROM `tblpo` INNER JOIN `tblstock` ON `tblstock`.`poID` = `tblpo`.`poID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` LEFT JOIN `tblpap` ON `tblpap`.`papID` = `tblpo`.`papID` WHERE `tblpo`.`poID` =  :ID GROUP BY `DRCode` ORDER BY `DRCode`"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayPODetails[] = array("message" => "success", 'PAP' => $row["papName"],  'Supplier' => $row["supplierName"], 'Fund' => $row["fundID"], 'Code' => $row["DRCode"], 'Date' => $row["DRDate"]);
	}
	jsEncode($arrayPODetails);
	$result = null;
?>