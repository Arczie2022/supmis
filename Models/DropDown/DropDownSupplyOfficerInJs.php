<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountName`, `accountUsername`,`officeName` FROM `tblaccount` `ta` INNER JOIN `tbloffices` `to` ON `ta`.`officeID` = `to`.`officeID` WHERE `levelID` BETWEEN 3 AND 5");
	$result->execute();
	
	while($row = $result->fetch()){
		$arraySupplyOfficer[] = array('message' => 'success', 'ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"], 'Office' => $row["officeName"]);	
	}
	$result = null;
	jsEncode($arraySupplyOfficer);
?>