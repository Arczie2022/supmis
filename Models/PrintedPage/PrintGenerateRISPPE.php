<?php
	require '../../Models/Connection/connection_wo_token.php';

	$code = GET("ID");
	$countMe = 0;

	$result = $db->prepare("SELECT `risppeDate`, `campusName`, `officeName`, `fundName`, `fundCode`, `risppeCode`, `supplyName`, `supplyProperty`, `supplyUnit`, `risppedetQuantity`, `supplyDesc`, `emp`.`accountName` as `employeeName`, `emp`.`accountPosition` as `employeePosition`, `officer`.`accountName` as `officerName`, `officer`.`accountPosition` as `officerPosition`  FROM `tblrisppedet` INNER JOIN `tblrisppe` ON `tblrisppe`.`risppeID` = `tblrisppedet`.`risppeID` INNER JOIN `tblstock` ON `tblstock`.`stockID` = `tblrisppedet`.`stockID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblaccount` `emp` ON `emp`.`accountID` = `tblrisppe`.`employeeID` LEFT JOIN `tbloffices` ON `tbloffices`.`officeID` = `emp`.`officeID` LEFT JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` LEFT JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblrisppe`.`officerID` WHERE `risppeCode` = :ID"); 
	$result->execute([":ID"=>$code]);

	while($row = $result->fetch()){
		$supply = $row["supplyCode"] == "" ? $row["supplyName"] : $row['supplyName'] . " (" . $row['supplyCode'] .")";
		$arrayRISPPEPDF[] = array('RequestDate' => $row['risppeDate'], 'Code' => $row['risppeCode'], 'Campus' => $row['campusName'], 'Property' => $row['supplyProperty'], 'Available' => $row['risppedetQuantity'], 'Unit' => $row['supplyUnit'], 'Supply' => $supply, 'Status' => "For Issuance", 'Quantity' => $row['risppedetQuantity'], 'Remarks' => $row['supplyDesc'], 'officerName' => $row['officerName'], 'officerPosition' => $row['officerPosition'], 'employeeName' => $row['employeeName'], 'employeePosition' => $row['employeePosition'], 'employeeOffice' => $row['officeName'], "Fund" => $row["fundName"]." (". $row["fundCode"] .")");
		$countMe++;
	}
	EmptyReports("ID", "", $arrayRISPPEPDF);
?>