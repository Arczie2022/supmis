<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$result = $db->prepare("SELECT `accountID`, `accountName`, `accountUsername` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `campusID` IN (SELECT `campusID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountID` = :ID) AND (`accountName` LIKE :name OR `accountUsername` LIKE :code)");
	$result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"], ":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayEmployee[] = array('message' => 'success', 'ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"]);	
	}
	jsEncode($arrayEmployee);
	$result = null;
?>