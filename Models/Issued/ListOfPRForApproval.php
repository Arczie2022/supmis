<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `purchaseID`, `accountName`, `supplyName`, `supplyCode`, `purchaseDesc`, `isReplacement`, `reissueProperty`, `reissueSerial`, `purchaseQuantity`, `purchaseBudget` FROM `tblpurchase` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblpurchase`.`supplyID` LEFT JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblpurchase`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblpurchase`.`employeeID` WHERE `IsApproved` = 0"); 
	$result->execute();

	while($row = $result->fetch()){
		$supply = $row["supplyCode"];
		$supply = $supply == "" || $supply == null ? $row["supplyName"] : $row["supplyName"]." (".$row["supplyCode"].")";
		$serial = $row["reissueProperty"]." (".$row["reissueSerial"].")";
		$serial = $serial == " ()" ? "-" : $serial;
		$replace = $row["isReplacement"] == 1 ? "For Replacement Parts" : "New Set of Equipment";

		$arrayPR[] = array("message" => "success", "ID" => $row["purchaseID"], "Employee" => $row["accountName"], "Equipment" => $supply, "Description" => $row["purchaseDesc"], "Type" => $replace, "Serial" => $serial, "Quantity" => $row["purchaseQuantity"], "Price" => number_format($row["purchaseBudget"],2));
	}
	jsEncode($arrayPR);
?>