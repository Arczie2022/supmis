<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblpo`.`fundID`, `fundName`, `tblpo`.`supplierID`, `supplierName`, `tblpo`.`papID`, `papName`, `supplyName`, `supplyDesc`, `supplyPurpose`, `stockBalance`, `supplyPrice`, `tblsupplydesc`.`descID`, `tblsupply`.`supplyID` FROM `tblpo` INNER JOIN `tblstock` ON `tblstock`.`poID` = `tblpo`.`poID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` LEFT JOIN `tblpap` ON `tblpap`.`papID` = `tblpo`.`papID` WHERE `stockBalance` != 0 AND `tblpo`.`poID` = :ID"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayPO[] = array("message" => "success", "ID" => $row["descID"], 'fundID' => $row["fundID"], 'supplierID' => $row["supplierID"], 'papID' => $row["papID"] , 'fundName' => $row["fundName"], 'supplierName' => $row["supplierName"], 'papName' => ($row["papName"] == null ? "" : $row["papName"]), "SupplyID" => $row["supplyID"], "Supply" => $row["supplyName"], "Description" => $row["supplyDesc"], "Purpose" => $row["supplyPurpose"], "Quantity" => $row["stockBalance"], "Price" => $row["supplyPrice"]);
	}
	jsEncode($arrayPO);
	$result = null;
?>