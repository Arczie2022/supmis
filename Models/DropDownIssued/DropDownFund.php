<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `fundID`, `fundName` FROM `tblfundcluster` WHERE `fundCode` like :code OR `fundName` like :name");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayFund[] = array('ID' => $row["fundID"], 'Name' => $row["fundName"]);	
	}
	jsEncode($arrayFund);
	$result = null;
?>