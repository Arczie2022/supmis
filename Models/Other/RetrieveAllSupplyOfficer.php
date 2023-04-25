<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountUsername`, `accountName`, `levelID`, `userType` as `accountPosition`, `officeName`, `tblaccount`.`levelID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblaccountlevel` ON `tblaccount`.`levelID` = `tblaccountlevel`.`userID` WHERE `tblaccount`.`levelID` AND `levelID` != 7 AND `levelID` != 0 AND `levelID` != 1");
	$result->execute();

	while($row = $result->fetch()){
		$arrayOfficer[] = array("message" => "success", 'ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"], 'Position' => $row["accountPosition"], 'Office' => $row["officeName"], 'PositionID' => $row["levelID"]);
	}
	$result = null;

	jsEncode($arrayOfficer);
?>