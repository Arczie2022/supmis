<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountName`, `accountUsername`, `officeName` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `levelID` = 8");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayHead[] = array('ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"], 'Office' => $row["officeName"]);	
	}
	
	$result = null;
?>