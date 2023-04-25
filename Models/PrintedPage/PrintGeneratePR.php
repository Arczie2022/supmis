<?php
	require '../../Models/Connection/connection_wo_token.php';

	$Employee = GET("Employee");
	$DateRequest = GET("DateRequest");
	$countMe = 0;

	$result = $db->prepare("SELECT `supplyProperty`, `purchaseUnit`, `supplyName`, `purchaseDesc`, `purchaseQuantity`, `purchaseBudget`, `officer`.`accountName` as `officer`, `employee`.`accountName` as `employee`, `officer`.`accountPosition` as `officerPosition`, `employee`.`accountPosition` as `employeePosition`, `officeName`, `IsApproved` FROM `tblpurchase` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblpurchase`.`supplyID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblpurchase`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `employee`.`officeID` LEFT JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblpurchase`.`officerID` WHERE `employeeID` = :Employee AND SUBSTRING(`tblpurchase`.`DateCreated`, 1, 10) = :DateRequest");
	$result->execute([":Employee" => $Employee, ":DateRequest" => $DateRequest]);
	$officerName = "";
	$officerPosition = "";
	while($row = $result->fetch()){
		$officerName = $row["officer"] == "" ? $officerName : $row["officer"];
		$officerPosition = $row["officerPosition"] == "" ? $officerPosition : $row["officerPosition"];
		$arrayPR[] = array("Office" => $row["officeName"], "Property" => $row["supplyProperty"], "Unit" => $row["purchaseUnit"], "Supply" => $row["supplyName"]." (".$row["purchaseDesc"].")", "Quantity" => $row["purchaseQuantity"], "Cost" => number_format($row["purchaseBudget"], 2), "Officer" => $officerName, "Employee" => $row["employee"], "OfficerPosition" => $officerPosition, "EmployeePosition" => $row["employeePosition"], "Total" => number_format(($row["purchaseBudget"] * $row["purchaseQuantity"]),2), "Status" => $row["IsApproved"]);
		$countMe++;
	}
	EmptyReports("Employee", "", $arrayPR);
	EmptyReports("DateRequest", "", "none");
?>