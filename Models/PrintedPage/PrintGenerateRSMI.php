<?php
	require '../../Models/Connection/connection_wo_token.php';

	$month = GET("M");
	$year = GET("Y");
	$fund = GET("Fund");
	$campus = GET("Campus");
	$countMe = 0;

	if ($campus == "1"){	
		$result = $db->prepare("SELECT `risCode` as `issueCode`, `supplyProperty` as `property`, `supplyName` as `supply`, `supplyUnit` as `unit`, `usedQuantity` as `quantity`, `supplyPrice` as `price`, `fundName`, `fundCode`, `chartCode`, `chartName` FROM `tblris` INNER JOIN `tblsupplyused` ON `tblsupplyused`.`risID` = `tblris`.`risID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblsupplyused`.`poID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblsupplyused`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE MONTH(`risDate`) = :Month_1 AND YEAR(`risDate`) = :Year_1 AND `tblpo`.`fundID` = :Fund_1 UNION ALL SELECT `risppeCode` as `issueCode`, `supplyProperty` as `property`, `supplyName` as `supply`, `supplyUnit` as `unit`, `risppedetQuantity` as `quantity`, `supplyPrice` as `price`, `fundName`, `fundCode`, `chartCode`, `chartName` FROM `tblrisppe` INNER JOIN `tblrisppedet` ON `tblrisppedet`.`risppeID` = `tblrisppe`.`risppeID` INNER JOIN `tblstock` ON `tblstock`.`stockID` = `tblrisppedet`.`stockID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE MONTH(`tblrisppe`.`risppeDate`) = :Month_2 AND YEAR(`tblrisppe`.`risppeDate`) = :Year_2  AND `tblpo`.`fundID` = :Fund_2");
		$result->execute([":Month_1"=>$month, ":Month_2"=>$month, ":Year_1"=>$year, ":Year_2"=>$year, ":Fund_1"=>$fund, ":Fund_2"=>$fund]);
	}else{
		$result = $db->prepare("SELECT `risCode` as `issueCode`, `supplyProperty` as `property`, `supplyName` as `supply`, `supplyUnit` as `unit`, `risAvailable` as `quantity`, `supplyPrice` as `price`, `fundName`, `fundCode`, `chartCode`, `chartName` FROM `tblris` INNER JOIN `tblrisdet` ON `tblrisdet`.`risID` = `tblris`.`risID` INNER JOIN `tblstockroom` ON `tblstockroom`.`srID` = `tblrisdet`.`stockID` INNER JOIN `tblstock` ON `tblstock`.`stockID` = `tblstockroom`.`stockID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE MONTH(`risDate`) = :Month AND YEAR(`risDate`) = :Year AND `risSource` = :Source AND `tblpo`.`fundID` = :Fund"); 
		$result->execute([":Month"=>$month, ":Year"=>$year, ":Fund"=>$fund, ":Source" => $campus]);
	}

	while($row = $result->fetch()){
		$arrayRSMI[] = array("IssueCode" => $row["issueCode"], "Property" => $row["property"], "Supply" => $row["supply"], "Unit" => $row["unit"], "Quantity" => $row["quantity"], "Price" => number_format($row["price"],2), "Fund" => $row["fundCode"]." - ".$row["fundName"], "Total" => number_format(($row["quantity"]*$row["price"]),2));

		$arrayUACS[] = array("Property" => $row["property"], "Quantity" => $row["quantity"]);

		$arrayStock[] = array("Price" => $row["price"], "Chart" => $row["chartCode"], "Total" => ($row["quantity"] * $row["price"]));

		$countMe++;
	}
	$tempSort = array();
	foreach ($arrayUACS as $key => $row)
	{
	    $tempSort[$key] = $row['Property'];
	}
	array_multisort($tempSort, SORT_ASC, $arrayUACS);	

	$totalUACS = count($arrayUACS);
	$countUACS = 0;
	$temp = "";
	$tempCount = 0;
	foreach ($arrayUACS as $item) {
		if ($temp == $item["Property"]){
			$tempCount+= $item["Quantity"];
		}else{
			if ($temp != ""){
				$arrayTempUACS[] = array("Property" => $temp, "Quantity" => $tempCount);
			}
			$temp = $item["Property"];
			$tempCount = $item["Quantity"];
		}
		$countUACS++;
		if ($totalUACS == $countUACS)
			$arrayTempUACS[] = array("Property" => $temp, "Quantity" => $tempCount);
	}
	$countUACS = count($arrayTempUACS);

	$tempSortChart = array();
	$tempSortPrice = array();
	foreach ($arrayStock as $key => $row)
	{
	    $tempSortChart[$key] = $row['Chart'];
	    $tempSortPrice[$key] = $row['Price'];
	}
	array_multisort($tempSortChart, SORT_ASC, $arrayStock,
					$tempSortPrice, SORT_NUMERIC, $arrayStock);

	$totalStock = count($arrayStock);
	$countStock = 0;

	$tempPrice = "";
	$tempChart = "";

	$tempUnit = 0;
	$tempTotal = 0;
	foreach ($arrayStock as $item) {
		if ($tempChart == $item["Chart"] && $tempPrice == $item["Price"]){
			$tempUnit = floatval($tempUnit) + floatval($item["Price"]);
			$tempTotal = floatval($tempTotal) + floatval($item["Total"]);
		}else{
			if ($tempChart != ""){
				$arrayTempStock[] = array("Price" => number_format($tempUnit,2), "Chart" => $item["Chart"], "Total" => number_format($tempTotal,2));
			}
			$tempChart = $item["Chart"];
			$tempPrice = $item["Price"];
			$tempUnit = $item["Price"];
			$tempTotal = $item["Total"];
		}
		$countStock++;
		if ($totalStock == $countStock)
			$arrayTempStock[] = array("Price" => number_format($tempUnit,2), "Chart" => $item["Chart"], "Total" => number_format($tempTotal,2));
	}
	$countStock = count($arrayTempStock);

	$countLoop = $countStock < $countUACS ? $countUACS : $countStock;

	for ($i=0; $i < $countLoop; $i++) { 
		if (empty($arrayTempUACS[$i])){
			$arrayTry[] = array_replace(array("Property" => "", "Quantity" => ""), $arrayTempStock[$i]);
		}
		else if (empty($arrayTempStock[$i])){
			$arrayTry[] = array_replace($arrayTempUACS[$i], array("Price" => "", "Chart" => "", "Total" => ""));
		}
		else{
			$arrayTry[] = array_replace($arrayTempUACS[$i], $arrayTempStock[$i]);
		}
	}

	unset($arrayTempStock);
	unset($arrayTempUACS);
	unset($arrayStock);
	unset($arrayUACS);
	unset($totalUACS);
	unset($totalStock);
	unset($countStock);
	unset($countUACS);
	unset($tempCount);
	unset($tempTotal);
	unset($tempCount);
	unset($tempUnit);
	unset($tempChart);
	unset($tempPrice);
	unset($tempSort);
	unset($tempSortPrice);
	unset($tempSortChart);

	EmptyReports("Fund", "PrintedPage/RSMI.php", $arrayRSMI);
	EmptyReports("M", "PrintedPage/RSMI.php", "none");
	EmptyReports("Y", "PrintedPage/RSMI.php", "none");
	EmptyReports("Campus", "PrintedPage/RSMI.php", "none");
?>