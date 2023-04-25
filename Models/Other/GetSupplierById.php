<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplierID`, `supplierCode`, `supplierName`, `supplierAddress`, `supplierGEPS`, `supplierDBP`, `supplierEmail`, `supplierCPerson`, `supplierPosition`, `supplierTelNo`, `supplierCpNo`, `supplierTIN`, `supplierStatus` FROM `tblsupplier` WHERE `supplierID` = :ID");
	
	$result->execute([":ID" => POST("ID")]);
	while ($row = $result->fetch()) {
		$arraySupplier[] = array('message' => 'success', 'ID' => $row["supplierID"], 'Code' => $row["supplierCode"], 'Name' => $row["supplierName"], 'Address' => $row["supplierAddress"], 'GEPS' => $row["supplierGEPS"], 'DBP' => $row["supplierDBP"], 'Email' => $row["supplierEmail"], 'Person' => $row["supplierCPerson"], 'Position' => $row["supplierPosition"], 'TelNo' => $row["supplierTelNo"], 'CPNo' => $row["supplierCpNo"], 'TIN' => $row["supplierTIN"], 'Status' => $row["supplierStatus"]);
	}

	echo (json_encode($arraySupplier));

	$result = null;
?>