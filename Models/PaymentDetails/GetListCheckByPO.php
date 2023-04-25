<?php
	require '../../Models/Connection/connection_token.php';
	require_once '../../Models/DropDown/DropDownPaymentType.php';

	$result = $db->prepare("SELECT `paymentID`, `paymentDate`, `paymentReceipt`, `paymentType`, (`paymentAmount` + `paymentTax` + IFNULL(`paymentLiquidate`,0)) as `amount` FROM `tblpayment` WHERE `poID` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		foreach ($arrayPaymentType as $item) {
			if ($item["Code"] == $row["paymentType"])
				$type = $item["Name"];
		}
		$arrayCheck[] = array("message" => "success", 'ID' => $row["paymentID"], 'Date' => $row["paymentDate"], 'CheckNo' => $row["paymentReceipt"], 'Type' => $type, 'Amount' => $row["amount"]);
	}
	if (empty($arrayCheck))$arrayCheck[] = array("message" => "success");
	jsEncode($arrayCheck);
?>