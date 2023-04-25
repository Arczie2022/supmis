<?php
	require '../../Models/Connection/connection_token.php';
	
	$result = $db->prepare("SELECT `reissueProperty`, `reissueSerial`, `reissueID` FROM `tblreissue` WHERE `employeeID` = :ID");
	$result->execute([":ID" => POST("ID")]);
	
	while($row = $result->fetch()){
		$arrayProperty[] = array('message' => 'success', 'ID' => $row["reissueID"], 'Code' => $row["reissueSerial"], 'Name' => $row["reissueProperty"]);	
	}
	
	jsEncode($arrayProperty);
	$result = null;
?>