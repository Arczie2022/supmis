<?php
	require '../../Models/Connection/connection_wo_token.php';
	
	$prevYear = intval(GET("Year"))-1;
	$currYear = GET("Year");
	$supply = GET("Supply");
	$fund = GET("Fund");
	$countMe = 0;

	$result = $db->prepare("SELECT `supplyDesc`, `supplyName`, `supplyProperty`, `fundName`, `fundCode`, `supplyUnit` FROM `tblsupplydesc` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` WHERE `tblsupplydesc`.`supplyID` = :Supply AND `tblpo`.`fundID` = :Fund GROUP BY `tblsupplydesc`.`supplyID`"); 
	$result->execute([":Supply" => $supply, ":Fund" => $fund]);
	$rowSupply = $result->fetch();

	$result = $db->prepare("SELECT `DRDate`, `DRCode`, SUM(`stockBalance`) as `qty`, `supplyPrice` FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` WHERE `fundID` = :Fund AND YEAR(`DRDate`) <= :prevYear AND `tblstock`.`supplyID` = :Supply"); 
	$result->execute([":prevYear" => $prevYear, ":Supply" => $supply, ":Fund" => $fund]);
	$row = $result->fetch();
	$total = intval($row["qty"]) * floatval($row["supplyPrice"]);

	$computeQty =  intval($row["qty"]);
	$computeUnit = floatval($row["supplyPrice"]);
	$computeTotal = floatval($total);

	$total = number_format($total, 3);

	$arraySLC[] = array('Date' => " Beginning Balance", 'Reference' => $row["DRCode"], 'Quantity' => intval($row["qty"]), 'Price' => number_format($row["supplyPrice"], 3), 'Total' => $total, 'Type' => "Balance", "Description" => $rowSupply["supplyDesc"], "Supply" => $rowSupply["supplyName"], "Property" => $rowSupply["supplyProperty"], "Fund" => $rowSupply["fundName"], "Unit" => $rowSupply["supplyUnit"]);
	$countMe++;
 	
 	$result = $db->prepare("SELECT `DRDate`, `DRCode`, `supplyPrice`, `stockAvailable` FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` WHERE `fundID` = :Fund AND YEAR(`DRDate`) = :currYear AND `tblstock`.`supplyID` = :Supply ORDER BY `DRDate`");
	$result->execute([":currYear" => $currYear, ":Supply" => $supply, ":Fund" => $fund]);

	while($row = $result->fetch()){
		$total = intval($row["stockAvailable"]) * floatval($row["supplyPrice"]);

		$computeQty =  intval($computeQty) + intval($row["stockAvailable"]);
		$computeUnit = floatval($computeUnit) + floatval($row["supplyPrice"]);
		$computeTotal = floatval($computeTotal) + floatval($total);
		
		$total = number_format($total, 3);

		$arraySLC[] = array('Date' => $row["DRDate"], 'Reference' => $row["DRCode"], 'Quantity' => $row["stockAvailable"], 'Price' => number_format($row["supplyPrice"], 3), 'Total' => $total, 'Type' => "Receipt", "Description" => $rowSupply["supplyDesc"], "Supply" => $rowSupply["supplyName"], "Property" => $rowSupply["supplyProperty"], "Fund" => $rowSupply["fundName"], "Unit" => $rowSupply["supplyUnit"], 'QuantityBal' => $computeQty, 'PriceBal' => "", 'TotalBal' => number_format($computeTotal,3));
		$countMe++;
	}

	$result = $db->prepare("SELECT `risCode`, `risDate`, `usedQuantity`, `supplyPrice`  FROM `tblsupplyused` INNER JOIN `tblris` ON `tblris`.`risID` = `tblsupplyused`.`risID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblsupplyused`.`descID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblrisdet` ON `tblrisdet`.`risID` = `tblris`.`risID` WHERE `fundID` = :Fund AND YEAR(`risDate`) = :currYear AND `tblsupplyused`.`supplyID` = :Supply ORDER BY `risDate`");
	$result->execute([":currYear" => $currYear, ":Supply" => $supply, ":Fund" => $fund]);

	while($row = $result->fetch()){
		$total = intval($row["usedQuantity"]) * floatval($row["supplyPrice"]);

		$computeQty =  intval($computeQty) - intval($row["usedQuantity"]);
		$computeTotal = floatval($computeTotal) - floatval($total);

		$total = number_format($total, 3);
		$arraySLC[] = array('Date' => $row["risDate"], 'Reference' => $row["risCode"], 'Quantity' => $row["usedQuantity"], 'Price' => number_format($row["supplyPrice"], 3), 'Total' => $total, 'Type' => "Issued", "Description" => $rowSupply["supplyDesc"], "Supply" => $rowSupply["supplyName"], "Property" => $rowSupply["supplyProperty"], "Fund" => $rowSupply["fundName"], "Unit" => $rowSupply["supplyUnit"], 'QuantityBal' => $computeQty, 'PriceBal' => "", 'TotalBal' => number_format($computeTotal,3));
		$countMe++;
	}

	$dateArr = array();
	foreach ($arraySLC as $key => $row)
	{
	    $dateArr[$key] = $row['Date'];
	}
	array_multisort($dateArr, SORT_ASC, $arraySLC);

	EmptyReports("Supply", "LedgerCard/SLC.php", $arraySLC);
	EmptyReports("Fund", "LedgerCard/SLC.php", "none");
	EmptyReports("Year", "LedgerCard/SLC.php", "none");
?>