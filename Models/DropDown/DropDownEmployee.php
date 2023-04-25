<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountName`, `accountUsername`, `officeName` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountUsername` like :code OR `accountName` like :name");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayEmployee[] = array('message' => 'success', 'ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"], 'Office' => $row["officeName"]);	
	}
	
	jsEncode($arrayEmployee);
	$result = null;
?>