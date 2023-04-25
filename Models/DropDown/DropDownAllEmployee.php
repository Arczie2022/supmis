<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `accountID`, `accountName`, `accountUsername` FROM `tblaccount`");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayEmployee[] = array('message' => 'success', 'ID' => $row["accountID"], 'Code' => $row["accountUsername"], 'Name' => $row["accountName"]);	
	}
	
	jsEncode($arrayEmployee);
	$result = null;
?>