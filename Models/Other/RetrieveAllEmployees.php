<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountUsername`, `accountName`, `accountPosition`, `tblaccount`.`officeID`, `tbloffices`.`officeName` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `campusID` = :ID");
	$result->execute([":ID" => POST("ID")]);
	while($row = $result->fetch()){
		$arrayEmployees[] = array('message' => 'success', 'ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"], 'Position' => $row["accountPosition"], 'officeID' => $row["officeID"], 'officeCode' => $row["officeCode"], 'officeName' => $row["officeName"]);
	}

	jsEncode($arrayEmployees);

?>