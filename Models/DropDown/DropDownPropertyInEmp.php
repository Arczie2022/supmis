<?php
	require '../../Models/Connection/connection_token.php';
	session_start();
	$result = $db->prepare("SELECT `reissueProperty`, `reissueSerial`, `reissueID` FROM `tblreissue` WHERE (`reissueProperty` LIKE :Property OR `reissueSerial` LIKE :Serials) AND `employeeID` = :ID");
	$result->execute([":Property"=>'%'.POST("ID").'%',":Serials"=>'%'.POST("ID").'%', ":ID" => $_SESSION["SUPMIS"]["supmis_ID"]]);
	
	while($row = $result->fetch()){
		$arrayProperty[] = array('message' => 'success', 'ID' => $row["reissueID"], 'Code' => $row["reissueSerial"], 'Name' => $row["reissueProperty"]);	
	}
	
	jsEncode($arrayProperty);
	$result = null;
?>