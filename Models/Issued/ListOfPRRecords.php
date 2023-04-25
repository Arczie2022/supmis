<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyName`, `supplyCode`, `purchaseDesc`, `isReplacement`, `reissueProperty`, `reissueSerial`, `purchaseQuantity`, `purchaseBudget`, `isApproved`, `officer`.`accountName` as `officer`, `employee`.`accountName` as `employee` FROM `tblpurchase` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblpurchase`.`supplyID` LEFT JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblpurchase`.`reissueID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblpurchase`.`officerID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblpurchase`.`employeeID` WHERE `IsApproved` != 0"); 
	$result->execute();

	while($row = $result->fetch()){
		$supply = $row["supplyCode"];
		$supply = $supply == "" || $supply == null ? $row["supplyName"] : $row["supplyName"]." (".$row["supplyCode"].")";
		$status = $row["isApproved"] == 1 ? "Approved" : "Disapproved";
		$serial = $row["reissueProperty"]." (".$row["reissueSerial"].")";
		$serial = $serial == " ()" ? "-" : $serial;
		$replace = $row["isReplacement"] == 1 ? "For Replacement Parts" : "New Set of Equipment";

		$arrayPR[] = array("message" => "success", "Equipment" => $supply, "Description" => $row["purchaseDesc"], "Type" => $replace, "Serial" => $serial, "Quantity" => $row["purchaseQuantity"], "Price" => number_format($row["purchaseBudget"],2), "Status" => $status, "Officer" => $row["officer"], "Employee" => $row["employee"]);
	}
	jsEncode($arrayPR);
?>