<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `disposepartsID`, `tblsupplydesc`.`descID`, `DRDate`, `supplyCode`, `supplyName`, `accountName`, `officeName`, `reissueSerial`, `replaceParts` FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tbldisposeparts` ON `tbldisposeparts`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tbldisposeparts`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tbldisposeparts`.`officerID` = 0"); 
	$result->execute();

	while($row = $result->fetch()){
		$arrayDisposal[] = array("message" => "success", 'ID' => $row["disposepartsID"], 'descID' => $row["descID"], 'Date' => $row["DRDate"], 'SupplyCode' => $row["supplyCode"], 'Supply' => $row["supplyName"], 'Employee' => $row["accountName"], 'Office' => $row["officeName"], 'Serial' => $row["reissueSerial"], "Parts" => $row["replaceParts"]);
	}

	jsEncode($arrayDisposal);
	$result = null;

?>