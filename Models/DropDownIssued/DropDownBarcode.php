<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `reissueSerial` FROM `tblreissue` WHERE `reissueSerial` LIKE :ID GROUP BY `reissueSerial`");
	$result->execute([":ID"=>'%'.POST("ID").'%']);

	while($row = $result->fetch()){
		$arrayBarcode[] = array("message" => "success", 'ID' => $row["reissueSerial"], 'Name' => $row["reissueSerial"]);
	}
	jsEncode($arrayBarcode);
?>