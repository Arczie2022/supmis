<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountName` FROM `tblaccount` WHERE `accountUsername` like :code OR `accountName` like :name");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayEmployee[] = array('message' => 'success', 'ID' => $row["accountID"], 'Name' => $row["accountName"]);	
	}
	
	jsEncode($arrayEmployee);
	$result = null;
?>