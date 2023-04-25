<?php
	require '../../Models/Connection/connection_token.php';

	$query = "";

	switch (POST("Type")) {
		case '1':
			$query = "SELECT 0 as `parentID`, `risID` as `ID`, `risCode` as `Code`,'-' as `PO`, `risDate` as `DateIssued`, `risDate` as `reissueDate`, '-' as `supplierName`, '-' as `fundName`, `risPurpose` as `Purpose` FROM `tblris` WHERE `risID` = :ID";
			break;
		case '2':
			$query = "SELECT `parentID`, `tblics`.`icsID` as `ID`, `icsCode` as `Code`, `icsDate` as `DateIssued`, `reissueDate`, `icsPO` as `PO`, `supplierName`, `fundName`, '' as `Purpose` FROM `tblreissue` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblics`.`supplierID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblics`.`fundID` WHERE `tblics`.`icsID` = :ID"; 
			break;
		case '3':
			$query = "SELECT `parentID`, `tblpare`.`pareID` as `ID`, `pareCode` as `Code`, `pareDateRequest` as `DateIssued`, `reissueDate`, `parePO` as `PO`, `supplierName`, `fundName`, '' as `Purpose` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpare`.`supplierID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpare`.`fundID` WHERE `tblpare`.`pareID` = :ID";
			break;
		
		default:
			$query = "";
			break;
	}

	if($query != ""){
		$result = $db->prepare($query);
		$result->execute([":ID"=>POST("ID")]);
		while($row = $result->fetch()){
			$arrayIssuanceInfo[] = array('message' => 'success', 'ID' => $row["ID"], 'parentID' => $row["parentID"], 'Code' => $row["Code"], 'Issued' => $row["DateIssued"], 'ReIssued' => $row["reissueDate"], 'PONo' => $row["PO"], 'Supplier' => $row["supplierName"], 'Fund' => $row["fundName"],  'Purpose' => $row["Purpose"]);
		}
	}
	else $arrayIssuanceInfo[] = array('message' => 'Connection Error');


	echo (json_encode($arrayIssuanceInfo));
	$result = null;

?>