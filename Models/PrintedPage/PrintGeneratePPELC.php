<?php
	require '../../Models/Connection/connection_wo_token.php';
	require_once '../../Models/Main/ConvertUsefulLife.php';
	require_once '../../Models/Main/MonthDifference.php';

	$fund = GET("Fund");
	$chart = GET("Chart");
	$supply = GET("Supply");
	
	$countMe = 0;

	$resultPO = $db->prepare("SELECT `tblsupplydesc`.`descID`, `tblstock`.`poID`, `poCode`, `poDateReceipt`, `DRCode`, `DRDate`, `chartCode`, `chartName`, `chartLife`, `supplyCode`, `supplyName`, `supplyProperty`, `supplierName`, `stockAvailable` as `quantity`, `supplyPrice`, (SELECT `fundName` FROM `tblfundcluster` WHERE `fundID` = :SubFund_1) as `FundName` FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `fundID` = :Fund AND `tblsupplydesc`.`chartID_Acc` = :Chart AND `tblsupplydesc`.`supplyID` = :Supply_1 UNION ALL SELECT -1 as `descID`, `tblpo`.`poID`, `poCode`, `poDateReceipt` , '' as `DRCode`, '' as `DRDate`, `chartCode`, `chartName`, `chartLife`, `supplyCode`, `supplyName`, `supplyProperty`, `supplierName`, 1 as `quantity`, `repairAmount` as `supplyPrice`, (SELECT `fundName` FROM `tblfundcluster` WHERE `fundID` = :SubFund_2) as `FundName`   FROM `tblbuildingrepair` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblbuildingrepair`.`poID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblbuildingrepair`.`chartID_Acc` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblbuildingrepair`.`buildingID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` WHERE `buildingID` = :Supply_2"); 
	$resultPO->execute([":Supply_1" => $supply, ":Supply_2" => $supply, ":Fund" => $fund, ":SubFund_1" => $fund, ":SubFund_2" => $fund, ":Chart" => $chart]);
	while($rowPO = $resultPO->fetch()){
		$resultIssued = $db->prepare("SELECT `tblreissue`.`reissueID`, IFNULL(`icsDate`,`pareDateRequest`) as `issuanceDate`, IFNULL(`icsCode`, `pareCode`) as `issuanceCode`, IFNULL(`disposeCost`,0) as `disposeCost` FROM `tblreissuedet` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreissuedet`.`reissueID` LEFT JOIN `tbldispose` ON `tbldispose`.`reissueID` = `tblreissue`.`reissueID` LEFT JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` LEFT JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` AND `tblpare`.`parePO` = (SELECT `tblpo`.`poID` FROM `tblstock` INNER JOIN `tblpo` ON `tblstock`.`poID` = `tblpo`.`poID` WHERE `descID` = :descID_pare) LEFT JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` LEFT JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` AND `tblics`.`icsPO` = (SELECT `tblpo`.`poID` FROM `tblstock` INNER JOIN `tblpo` ON `tblstock`.`poID` = `tblpo`.`poID` WHERE `descID` = :descID_ics) WHERE `tblreissuedet`.`descID` = :descID"); 
		$resultIssued->execute([":descID" => $rowPO["descID"], ":descID_ics" => $rowPO["descID"], ":descID_pare" => $rowPO["descID"]]);

		$countIssued = 0;

		$arrayIssued = [];
		while($row = $resultIssued->fetch()){
			array_push($arrayIssued, $row["issuanceDate"],  $row["issuanceCode"], $row["disposeCost"], $row["reissueID"]);
			$countIssued++;
		}
		$countTempIssued = 0;

		for ($loopQuantity=0; $loopQuantity < $rowPO["quantity"]; $loopQuantity++) { 

			$dateIssued= "";
			$codeIssued= "";
			$disposeCost= 0;

			if($countIssued > $countTempIssued){
				$dateIssued = $arrayIssued[($countTempIssued * 4)];
				$codeIssued = $arrayIssued[($countTempIssued * 4)+1];
				$disposeCost = $arrayIssued[($countTempIssued * 4)+2];
				$reissueID = $arrayIssued[($countTempIssued * 4)+3];
				$countTempIssued++;
			}

			$resultRepair = $db->prepare("SELECT `repairType`, `repairCost` FROM `tblreturn` WHERE `reissueID` = :reissueID AND `repairType` IS NOT NULL");
			$resultRepair->execute([":reissueID" => $reissueID]);
			$countRepair = 0;
			$arrayRepair = [];
			while($row = $resultRepair->fetch()){
				array_push($arrayRepair, $row["repairType"], $row["repairCost"]);
				$countRepair++;
			}

			$total = $rowPO["supplyPrice"];

			$RateDepre = 1 - 0.05;
			$RateDepre /= ConvertUsefulLife($rowPO["chartLife"]);
			$RateDepre *= 100;
			$dateTemp = $rowPO["DRDate"];
			$dateTemp = $dateTemp == "" ? $rowPO["poDateReceipt"] : $dateTemp;
			$AccDepre =  monthDiff($dateTemp);
			$AccDepre *= ($RateDepre/100);
			$AccDepre *= $total;

			$AccDepre = $AccDepre > $total ? $total : $AccDepre;

			$adjustCost = $total - ($AccDepre + $disposeCost);
			if ($countRepair == 0){
				$arrayDetails[] = array('poCode' => $rowPO["poCode"], 'poDateReceipt' => $rowPO["poDateReceipt"],'issueCode' => $codeIssued, 'issueDate' => $dateIssued,'DRCode' => $rowPO["DRCode"], 'DRDate' => $rowPO["DRDate"], 'chartName' => $rowPO["chartName"], 'chartCode' => $rowPO["chartCode"], 'chartLife' => $rowPO["chartLife"], 'supplyCode' => $rowPO["supplyCode"], 'supplyName' => $rowPO["supplyName"], 'supplyProperty' => $rowPO["supplyProperty"], 'supplierName' => $rowPO["supplierName"], 'quantity' => 1, 'stockPrice' => $rowPO["supplyPrice"], 'FundName' => $rowPO["FundName"], 'disposeCost' => $disposeCost, "RateDepre" => $RateDepre, "AccDepre" => $AccDepre, "total" => $total, "adjustCost" => $adjustCost, "NatureRepair" => "", "RepairCost" => "0.00", "rowspan" => "1");
				$countMe++;
			}else{
				for ($loopRepair=0; $loopRepair < $countRepair; $loopRepair++) { 
					$NatureRepair = $arrayRepair[($loopRepair * 2)];
					$RepairCost = number_format(floatval($arrayRepair[($loopRepair * 2)+1]),2);
					if ($loopRepair == 0){
						$arrayDetails[] = array('poCode' => $rowPO["poCode"], 'poDateReceipt' => $rowPO["poDateReceipt"],'issueCode' => $codeIssued, 'issueDate' => $dateIssued,'DRCode' => $rowPO["DRCode"], 'DRDate' => $rowPO["DRDate"], 'chartName' => $rowPO["chartName"], 'chartCode' => $rowPO["chartCode"], 'chartLife' => $rowPO["chartLife"], 'supplyCode' => $rowPO["supplyCode"], 'supplyName' => $rowPO["supplyName"], 'supplyProperty' => $rowPO["supplyProperty"], 'supplierName' => $rowPO["supplierName"], 'quantity' => 1, 'stockPrice' => $rowPO["supplyPrice"], 'FundName' => $rowPO["FundName"], 'disposeCost' => $disposeCost, "RateDepre" => $RateDepre, "AccDepre" => $AccDepre, "total" => $total, "adjustCost" => $adjustCost, "NatureRepair" => $NatureRepair, "RepairCost" => $RepairCost, "rowspan" => $countRepair);
					}else{
						$arrayDetails[] = array('poCode' => "", 'poDateReceipt' => "",'issueCode' => "", 'issueDate' => "",'DRCode' => "", 'DRDate' => "", 'chartName' => "", 'chartCode' => "", 'chartLife' => "", 'supplyCode' => "", 'supplyName' => "", 'supplyProperty' => "", 'supplierName' => "", 'quantity' => 1, 'stockPrice' => "", 'FundName' => "", 'disposeCost' => "", "RateDepre" => "", "AccDepre" => "", "total" => "", "adjustCost" => "", "NatureRepair" => $NatureRepair, "RepairCost" => $RepairCost, "rowspan" => "0");
					}
					$countMe++;
				}
			}
		}
	}

	EmptyReports("Fund", "LedgerCard/PPE.php", $arrayDetails);
	EmptyReports("Chart", "LedgerCard/PPE.php", "none");
	EmptyReports("Supply", "LedgerCard/PPE.php", "none");
	$result = null;
?>