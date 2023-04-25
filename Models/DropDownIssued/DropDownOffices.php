<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `officeID`,  `officeName` FROM `tbloffices` WHERE `officeID` != 0 AND ( `officeName` LIKE :name OR `officeCode` LIKE :code)");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);

	while($row = $result->fetch()){
		$arrayOffices[] = array('ID' => $row["officeID"], 'Name' => $row["officeName"]);
	}
	jsEncode($arrayOffices);
?>