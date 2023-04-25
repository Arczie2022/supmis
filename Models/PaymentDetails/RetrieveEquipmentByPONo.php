<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblsupplydesc`.`descID`, IFNULL(`supplyProperty`, '') as 	`supplyCode`, `supplyName`,  `supplyUnit`, `supplyDesc`, `supplyPurpose`, `supplyPrice`, `IsReplace`, `stockAvailable`, `stockBalance` FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` WHERE `poID` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$replace = $row["IsReplace"] == "0" ? "New Set of Equipment" : "For Replacement"; 
		$arraySupply[] = array("message" => "success", "ID" => $row["descID"], "SupplyCode" => $row["supplyCode"], "SupplyName" => $row["supplyName"], "Unit" => $row["supplyUnit"], "Description" => $row["supplyDesc"], "Purpose" => $row["supplyPurpose"], "Price" => number_format($row["supplyPrice"]), "Quantity" => $row["stockAvailable"], "Balance" => $row["stockBalance"], "Replace" => $replace);
	}

	jsEncode($arraySupply);
?>