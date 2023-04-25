<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblreturn`.`returnID`, `tblreturn`.`reissueID`, `returnDate`, `supplyCode`, `supplyName`, `accountName`, `officeName`, `reissueSerial` FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID`  AND `returnID` IN (SELECT MAX(`returnID`) FROM `tblreturn` GROUP BY `reissueID` ) AND NOT `tblreturn`.`reissueID` IN (SELECT `reissueID` FROM `tbldispose`) INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblreturn`.`isReturn` = 3"); 
	$result->execute();

	while($row = $result->fetch()){
		$arrayDisposal[] = array("message" => "success", 'ID' => $row["reissueID"], 'returnID' => $row["returnID"], 'Date' => $row["returnDate"], 'SupplyCode' => $row["supplyCode"], 'Supply' => $row["supplyName"], 'Employee' => $row["accountName"], 'Office' => $row["officeName"], 'Serial' => $row["reissueSerial"]);
	}

	jsEncode($arrayDisposal);
	$result = null;

?>