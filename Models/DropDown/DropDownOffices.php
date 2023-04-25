<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `officeID`, `officeCode`, `officeName`, `campusName` FROM `tbloffices` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `officeID` != 0 AND ( `officeName` LIKE :name OR `officeCode` LIKE :code)");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);

	while($row = $result->fetch()){
		$arrayOffices[] = array('ID' => $row["officeID"], 'Code' => $row["officeCode"], 'Name' => $row["officeName"], 'Campus' => $row["campusName"]);
	}
	jsEncode($arrayOffices);
?>