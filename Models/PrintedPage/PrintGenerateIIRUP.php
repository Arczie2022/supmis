<?php
	require '../../Models/Connection/connection_wo_token.php';
	session_start();

	$DateStart = GET("Start");
	$DateEnd = GET("End");
	$Fund = GET("Fund");
	$FundName = GET("FName");

	$countMe = 0;

	$result = $db->prepare("SELECT `DRDate`, `supplyName`, `supplyDesc`, `reissueProperty`, `supplyUnit`, `supplyPrice`, `disposeRemark`, `disposeType`, IFNULL(`disposeReceipt`, '') as `disposeReceipt`, `disposeCost`  FROM `tbldispose` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tbldispose`.`reissueID` INNER JOIN `tblreissuedet` ON `tblreissuedet`.`reissuedetID` = `tblreissue`.`parentID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblreissuedet`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` WHERE DATE(`disposeDate`) >= DATE(:DateStart) AND DATE(`disposeDate`) <= DATE(:DateEnd) AND `fundID` = :Fund");
	$result->execute([":DateStart" => $DateStart, ":DateEnd" => $DateEnd, ":Fund" => $Fund]);

	while($row = $result->fetch()){
		$type = "";

		$Sale = 0;
		$Transfer = 0;
		$Destruction = 0;
		$other = 0;
		$total = 0;

		switch ($row["disposeType"]) {
			case 'Auction':
				$Other+=1;
				$type = "Public Auction";
			break;
			case 'Sale':
				$Sale+=1;
				$type = "Sale Thru Negotiation";
			break;
			case 'Barter':
				$Other+=1;
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
		$total++;
		$other = $other == 1 ? $row["disposeType"] . " - " . $other : $other;
		$arrayIIRUP[] = array("Date" => $row["DRDate"], "Articles" => $row["supplyName"]." [".$row["supplyDesc"]."]", "Property" => $row["reissueProperty"], "Unit" => $row["supplyUnit"], "Cost" => str_replace(",", ", ", number_format($row["supplyPrice"], 2)), "Remarks" => $row["disposeRemark"], "OR" => $row["disposeReceipt"], "Amount" => str_replace(",", ", ", number_format($row["disposeCost"], 2)), "Sale" => $Sale, "Transfer" => $Transfer, "Destruction" => $Destruction, "other" => $other, "total" => $total, "type" => $type, "value" => $row["supplyPrice"]);
		$countMe++;
	}

	$result = $db->prepare("SELECT `accountPosition`, `campusCode` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `accountID` = :ID"); 
	$result->execute([":ID" => $_SESSION["SUPMIS"]["supmis_ID"]]);
	$row = $result->fetch();
	$position = $row["accountPosition"];
	$campus = $row["campusCode"];

	EmptyReports("Fund", "Reports/IIRUP.php", $arrayIIRUP);
	EmptyReports("Start", "Reports/IIRUP.php", "none");
	EmptyReports("End", "Reports/IIRUP.php", "none");
	EmptyReports("FName", "Reports/IIRUP.php", "none");

?>