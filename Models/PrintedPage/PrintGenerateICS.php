<?php
	require '../../Models/Connection/connection_wo_token.php';

	$code = GET("ID");
	$countMe = 0;

	$result = $db->prepare("SELECT `icsDate`, `icsCode`, `fundName`, `supplyUnit`, `supplyPrice`, `supplyName`, `supplyDesc`, '' as `reissueProperty`, `chartLife`, `supplierName`, `poCode`, `officer`.`accountName` as `officerName`, `employee`.`accountName` as `employeeName`, `officeEmployee`.`officeCode` as `employeeOffice`, `officeOfficer`.`officeCode` as `officerOffice`, `officer`.`accountPosition` as `officerPosition`, `employee`.`accountPosition` as `employeePosition` FROM `tblicsdet` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblics`.`icsPO` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblics`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblics`.`supplierID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblics`.`officerIDTo` INNER JOIN `tbloffices` `officeEmployee` ON `officeEmployee`.`officeID` = `employee`.`officeID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblics`.`officerIDFrom` INNER JOIN `tbloffices` `officeOfficer` ON `officeOfficer`.`officeID` = `officer`.`officeID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `icsCode` = :ID"); 
	$result->execute([":ID"=>$code]);
	while($row = $result->fetch()){
		$supply = $row["supplyDesc"] == "" ? $row["supplyName"] : $row['supplyName'] . " (" . $row['supplyDesc'] .")";
		$arrayICSPDF[] = array('DateRequest' => $row['icsDate'], 'Fund' => $row['fundName'], 'Code' => $row['icsCode'], 'Price' => $row['supplyPrice'], 'Property' => $row['reissueProperty'], 'Life' => $row['chartLife'], 'Unit' => $row['supplyUnit'], 'Supply' => $supply, 'Supplier' => $row['supplierName'], 'PONo' => $row['poCode'], 'officerName' => $row['officerName'], 'officerPosition' => $row['officerPosition'], 'officerOffice' => $row['officerOffice'], 'employeeName' => $row['employeeName'], 'employeePosition' => $row['employeePosition'], 'employeeOffice' => $row['employeeOffice']);
		$countMe++;
	}
	if($countMe == 0){
		$result = $db->prepare("SELECT `icsDate`, `icsCode`, `fundName`, `supplyUnit`, `supplyPrice`, `supplyName`, `supplyDesc`, `chartLife`, `supplierName`, `poCode`, `officer`.`accountName` as `officerName`, `employee`.`accountName` as `employeeName`, `officeEmployee`.`officeCode` as `employeeOffice`, `officeOfficer`.`officeCode` as `officerOffice`, `officer`.`accountPosition` as `officerPosition`, `employee`.`accountPosition` as `employeePosition` FROM `tblicsdet` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblics`.`icsPO` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblics`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblics`.`supplierID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblics`.`officerIDTo` INNER JOIN `tbloffices` `officeEmployee` ON `officeEmployee`.`officeID` = `employee`.`officeID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblics`.`officerIDFrom` INNER JOIN `tbloffices` `officeOfficer` ON `officeOfficer`.`officeID` = `officer`.`officeID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `icsCode` = :ID"); 
		$result->execute([":ID"=>$code]);

		while($row = $result->fetch()){
			$supply = $row["supplyDesc"] == "" ? $row["supplyName"] : $row['supplyName'] . " (" . $row['supplyDesc'] .")";
			$arrayICSPDF[] = array('DateRequest' => $row['icsDate'], 'Fund' => $row['fundName'], 'Code' => $row['icsCode'], 'Price' => $row['supplyPrice'], 'Property' => '', 'Life' => $row['chartLife'], 'Unit' => $row['supplyUnit'], 'Supply' => $supply, 'Supplier' => $row['supplierName'], 'PONo' => $row['poCode'], 'officerName' => $row['officerName'], 'officerPosition' => $row['officerPosition'], 'officerOffice' => $row['officerOffice'], 'employeeName' => $row['employeeName'], 'employeePosition' => $row['employeePosition'], 'employeeOffice' => $row['employeeOffice']);
			$countMe++;
		}
	}
	EmptyReports("ID", "", $arrayICSPDF);
?>