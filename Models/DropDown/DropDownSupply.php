<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyID`, `supplyCode`, `supplyName` FROM `tblsupply` WHERE `supplyCode` LIKE :code OR `supplyName` LIKE :name OR `supplyProperty` LIKE :property");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%',":property"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arraySupply[] = array('message' => 'success', 'ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"]);	
	}
	
	jsEncode($arraySupply);
	$result = null;
?>