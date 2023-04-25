<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT SUM(`supplyPrice` * `stockAvailable`) - IFNULL((SELECT (SUM(`paymentAmount`) + SUM(`paymentTax`) + SUM(`paymentLiquidate`)) as `stock` FROM `tblpayment` WHERE `poID` = :ID_1 GROUP BY `poID`), 0) as `stockPrice` FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE `poID` = :ID_2 GROUP BY `poID`"); 
	$result->execute([":ID_1" => POST("ID"), ":ID_2" => POST("ID")]);
	$row = $result->fetch();
	$balance = $row["stockPrice"]; 

	$result = $db->prepare("SELECT `poDateReceipt`, `supplierName`, `fundName`, `papName`, `tblsupplyused`.`supplyID`, `supplyName`  FROM `tblpo` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` LEFT JOIN `tblpap` ON `tblpap`.`papID` = `tblpo`.`papID` LEFT JOIN `tblsupplyused` ON `tblsupplyused`.`poID` = `tblpo`.`poID` LEFT JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplyused`.`supplyID` WHERE `tblpo`.`poID` = :ID GROUP BY `tblsupplyused`.`supplyID`ORDER BY `supplyName`");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayPaymentDetails[] = array("message" => "success", 'datePO' => $row["poDateReceipt"], 'Supplier' => $row["supplierName"], 'Fund' => $row["fundName"], 'PAP' => $row["papName"], 'supplyID' => $row["supplyID"], 'supplyName' => $row["supplyName"], "Balance" => $balance);
	}

	jsEncode($arrayPaymentDetails);

	$result = null;
?>