<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poID`, `fundID`, `tblsupplier`.`supplierID`, `supplierName`, `papID`, `poDateReceipt` FROM `tblpo` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` WHERE `poCode` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayPO[] = array("message" => "success", 'poID' => $row["poID"], 'fundID' => $row["fundID"], 'supplierID' => $row["supplierID"], 'papID' => $row["papID"], 'receiptDate' => $row["poDateReceipt"], 'supplierName' => $row['supplierName']);
	}
	if (empty($arrayPO)) $arrayPO[] = array("message" => "success", 'poID' => "0");
	jsEncode($arrayPO);
	$result = null;
?>