<?php
	require '../../Models/Connection/connection_wo_token.php';
	require_once '../../Models/DropDown/DropDownDisposal.php';

	$Year = GET("Period");
	$fund = GET("Fund");
	$fundName = GET("FName"); 
	
	$countMe = 0;

	$Auction = 0;
	$Sale = 0;
	$Barter = 0;
	$Transfer = 0;
	$Destruction = 0;
	$total = 0;

	$result = $db->prepare("SELECT `stockAvailable` as `quantity`, `supplyUnit`, `disposepartsDesc`, `disposepartsReceipt`, `disposepartsRDate`, `disposepartsCost`, `disposepartsAgency`, `disposepartsRemark`, `disposepartsType` FROM `tbldisposeparts` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tbldisposeparts`.`descID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` WHERE `fundID` = :fund AND YEAR(`disposepartsDate`) = :Year");
	$result->execute([":fund" => $fund, ":Year" => $Year]); 

	while($row = $result->fetch()){
		$type = "";
		switch ($row["disposepartsType"]) {
			case 'Auction':
				$Auction+=1;
				$type = "Public Auction";
			break;
			case 'Sale':
				$Sale+=1;
				$type = "Sale Thru Negotiation";
			break;
			case 'Barter':
				$Barter+=1;
				$type = "Barter";
			break;
			case 'Transfer':
				$Transfer+=1;
				$type = "Transfer to Other Government Agencies";
			break;
			case 'Destruction':
				$Destruction+=1;
				$type = "Destruction or Condemnation";
			break;
			
		}
		$total += $row["disposepartsCost"];
		$AgencyName = $row["disposepartsAgency"] == "" ? $AgencyName : $row["disposepartsAgency"];

		$arrayWMR[] = array("Quantity" => $row["quantity"], "Unit" => $row["supplyUnit"], "Description" => $row["disposepartsDesc"], "Receipt" => $row["disposepartsReceipt"], "ReceiptDate" => $row["disposepartsRDate"], "Cost" => number_format($row["disposepartsCost"], 2), "Agency" => $AgencyName, "Remarks" => $row["disposepartsRemark"], "Type" => $type);
		$countMe++;
 	}

 	$result = $db->prepare("SELECT `accountName` FROM `tblaccount` WHERE `levelID` = 2");
 	$result->execute();
 	$row = $result->fetch();
 	$president = strtoupper($row["accountName"]);

 	$total = number_format($total, 2);
	EmptyReports("Fund", "Reports/WMR.php", $arrayWMR);
	EmptyReports("FName", "Reports/WMR.php", "none");
	EmptyReports("Period", "Reports/WMR.php", "none");

?>