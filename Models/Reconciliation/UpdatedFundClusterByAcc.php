<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poID`, `poCode`, `poDateReceipt`, `SPMO`.`fundName` as `SPMO_Fund`, `Acc`.`FundName` as `Acc_Fund` FROM `tblpo` INNER JOIN `tblfundcluster` `SPMO` ON `SPMO`.`fundID` = `tblpo`.`fundID_SPMO` INNER JOIN `tblfundcluster` `Acc` ON `Acc`.`fundID` = `tblpo`.`fundID` WHERE `fundID_SPMO` != `tblpo`.`fundID`"); $result->execute();

	while($row = $result->fetch()){
		$arrayFund[] = array("message" => "success", 'ID' => $row["poID"], 'Date' => $row["poDateReceipt"], 'poCode' => $row["poCode"], 'SPMO_Fund' => $row["SPMO_Fund"], 'Acc_Fund' => $row["Acc_Fund"]);
	}

	jsEncode($arrayFund);
	$result = null;
?>