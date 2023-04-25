<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplierID`, `supplierCode`, `supplierName`, `statusDesc`  FROM `tblsupplier` INNER JOIN `tblstatus` ON `statusNo` = `supplierStatus` AND `statusTable` = 'Supplier'");
	$result->execute();

	while($row = $result->fetch()){
		$code = $row["supplierCode"];
		$code = $code == "" ? "-" : $code;
		$arraySupplier[] = array('message' => 'success','ID' => $row["supplierID"], 'Code' => $code, 'Name' => $row["supplierName"], 'Status' => $row["statusDesc"]);
	}
 	jsEncode($arraySupplier);
	$result = null;

?>