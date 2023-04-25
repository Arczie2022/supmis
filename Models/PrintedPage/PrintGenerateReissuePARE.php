<?php
	require '../../Models/Connection/connection_wo_token.php';

	$code = GET("ID");
	$emp = GET("emp");
	$countMe = 0;

	$result = $db->prepare("SELECT `reissueDate`, `pareCode`, `fundName`, `supplyUnit`, `supplyPrice`, `supplyName`, `supplyDesc`, `reissueProperty`, `chartLife`, `supplierName`, `poCode`, `DRDate`, `officer`.`accountName` as `officerName`, `employee`.`accountName` as `employeeName`, `officeEmployee`.`officeCode` as `employeeOffice`, `officeOfficer`.`officeCode` as `officerOffice`, `officer`.`accountPosition` as `officerPosition`, `employee`.`accountPosition` as `employeePosition` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblreissue`.`paredetID` = `tblparedet`.`paredetID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblpare`.`parePO` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpare`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpare`.`supplierID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` `officeEmployee` ON `officeEmployee`.`officeID` = `employee`.`officeID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblpare`.`officerIDTo` INNER JOIN `tbloffices` `officeOfficer` ON `officeOfficer`.`officeID` = `officer`.`officeID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `pareCode` = :ID AND `employee`.`accountUsername` = :emp"); 
	$result->execute([":ID"=>$code, ":emp"=>$emp]);

	while($row = $result->fetch()){
		$supply = $row["supplyDesc"] == "" ? $row["supplyName"] : $row['supplyName'] . " (" . $row['supplyDesc'] .")";
		$arrayPAREPDF[] = array('DateRequest' => $row['reissueDate'], 'Fund' => $row['fundName'], 'Code' => $row['pareCode'], 'Price' => $row['supplyPrice'], 'Property' => $row['reissueProperty'], 'Life' => $row['chartLife'], 'Unit' => $row['supplyUnit'], 'Supply' => $supply, 'Supplier' => $row['supplierName'], 'PONo' => $row['poCode'], 'DateAcquire' => $row['DRDate'], 'officerName' => $row['officerName'], 'officerPosition' => $row['officerPosition'], 'officerOffice' => $row['officerOffice'], 'employeeName' => $row['employeeName'], 'employeePosition' => $row['employeePosition'], 'employeeOffice' => $row['employeeOffice']);
		$countMe++;
	}
	if($countMe == 0){
		$result = $db->prepare("SELECT  `pareDateRequest` as `reissueDate`, `pareCode`, `fundName`, `supplyUnit`, `supplyPrice`, `supplyName`, `supplyDesc`, `chartLife`, `supplierName`, `poCode`, `DRDate`, `officer`.`accountName` as `officerName`, `employee`.`accountName` as `employeeName`, `officeEmployee`.`officeCode` as `employeeOffice`, `officeOfficer`.`officeCode` as `officerOffice`, `officer`.`accountPosition` as `officerPosition`, `employee`.`accountPosition` as `employeePosition` FROM `tblparedet` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblpare`.`parePO` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpare`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpare`.`supplierID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblpare`.`officerIDTo` INNER JOIN `tbloffices` `officeEmployee` ON `officeEmployee`.`officeID` = `employee`.`officeID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblpare`.`officerIDFrom` INNER JOIN `tbloffices` `officeOfficer` ON `officeOfficer`.`officeID` = `officer`.`officeID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `pareCode` = :ID AND `employee`.`accountUsername` = :emp"); 
		$result->execute([":ID"=>$code, ":emp"=>$emp]);

		while($row = $result->fetch()){
			$supply = $row["supplyDesc"] == "" ? $row["supplyName"] : $row['supplyName'] . " (" . $row['supplyDesc'] .")";
			$arrayPAREPDF[] = array('DateRequest' => $row['reissueDate'], 'Fund' => $row['fundName'], 'Code' => $row['pareCode'], 'Price' => $row['supplyPrice'], 'Property' => '', 'Life' => $row['chartLife'], 'Unit' => $row['supplyUnit'], 'Supply' => $supply, 'Supplier' => $row['supplierName'], 'PONo' => $row['poCode'], 'DateAcquire' => $row['DRDate'], 'officerName' => $row['officerName'], 'officerPosition' => $row['officerPosition'], 'officerOffice' => $row['officerOffice'], 'employeeName' => $row['employeeName'], 'employeePosition' => $row['employeePosition'], 'employeeOffice' => $row['employeeOffice']);
			$countMe++;
		}
	}
	EmptyReports("emp", "", $arrayPAREPDF);
	EmptyReports("ID", "", "none");
?>