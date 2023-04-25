<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplierID`, `supplierCode`, `supplierName` FROM `tblsupplier` WHERE `supplierCode` LIKE :code OR `supplierName` LIKE :name");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arraySupplier[] = array('message' => 'success', 'ID' => $row["supplierID"], 'Code' => $row["supplierCode"], 'Name' => $row["supplierName"]);	
	}
	
	jsEncode($arraySupplier);
	$result = null;
?>