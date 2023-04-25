<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poID`, `poDateReceipt`, `poCode`, `supplierName`, (SELECT SUM(`supplyPrice` * `stockAvailable`) FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE `poID` = `outPO`.`poID`) as `overall`, IFNULL((SELECT (SUM(`paymentAmount`) + SUM(`paymentTax`) + SUM(`paymentLiquidate`)) FROM `tblpayment` WHERE `poID` = `outPO`.`poID`),0) as `paid` FROM `tblpo` `outPO` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `outPO`.`supplierID`"); 
	$result->execute();

	while($row = $result->fetch()){
		$arrayListPO[] = array("message" => "success", 'ID' => $row["poID"], 'Date' => $row["poDateReceipt"], 'Code' => $row["poCode"], 'Supplier' => $row["supplierName"], 'Balance' => (floatval($row["overall"]) - floatval($row["paid"])), 'Paid' => $row["paid"]);
	}
	jsEncode($arrayListPO);
	$result = null;
?>