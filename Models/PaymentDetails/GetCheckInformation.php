<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `paymentReceipt`, `paymentDate`, `paymentType`, `paymentAmount`, `paymentTax`, `paymentLiquidate`, `accountName` FROM `tblpayment` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblpayment`.`No` WHERE `paymentID` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayPayment[] = array("message" => "success", 'CheckNo' => $row["paymentReceipt"],  'Date' => $row["paymentDate"],  'Type' => $row["paymentType"],  'Amount' => $row["paymentAmount"],  'Tax' => $row["paymentTax"],  'Liquidate' => $row["paymentLiquidate"],  'Officer' => $row["accountName"]);
	}
	jsEncode($arrayPayment);
?>