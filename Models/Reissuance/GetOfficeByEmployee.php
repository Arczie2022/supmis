<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblaccount`.`officeID`, `officeName`, `officeCode` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountID` = :ID");
	$result->execute([":ID" => POST("ID")]);
	$row = $result->fetch();
	$arrayOffice[] = array("message" => "success", 'Name' => $row["officeName"], 'Code' => $row["officeCode"], 'ID' => $row["officeID"]);	

	jsEncode($arrayOffice);

?>