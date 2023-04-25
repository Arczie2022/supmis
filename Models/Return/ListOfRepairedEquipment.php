<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `returnID`, `supplyName`, `reissueSerial`, `returnDate` as `startDate`, (select `returnDate` FROM `tblreturn` WHERE  `returnID` = (SELECT MIN(`returnID`) FROM `tblreturn` WHERE `reissueID` = `tblret`.`reissueID` AND `returnID` > `tblret`.`returnID`)) as `endDate`, `emp`.`accountName` as `employee`, `officer`.`accountName` as `supplyOfficer` FROM `tblreturn` `tblret` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblret`.`reissueID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` `emp` ON `emp`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblret`.`officerID` WHERE `isReturn` = 7");
	$result->execute();

	while($row = $result->fetch()){
		$arrayRepairedItem[] = array("message" => "success", 'ID' => $row["returnID"], 'Supply' => $row["supplyName"], 'Serial' => $row["reissueSerial"], 'StartDate' => $row["startDate"], 'EndDate' => $row["endDate"], 'Employee' => $row["employee"], 'SupplyOfficer' => $row["supplyOfficer"], );
	}

	jsEncode($arrayRepairedItem);
?>