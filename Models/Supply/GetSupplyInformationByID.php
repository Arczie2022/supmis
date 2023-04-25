<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyID`, `supplyCode`, `supplyName`, `supplyProperty`, `supTypeID` FROM `tblsupply` WHERE `supplyID` = :ID");
	$result->execute([":ID"=>POST("ID")]);

	if($row = $result->fetch()){
		$arraySupplyInfo[] = array('message' => 'success', 'ID' => $row["supplyID"], 'Code' => $row["supplyCode"] == null ? "" : $row["supplyCode"], 'Name' => $row["supplyName"], 'Property' => ($row["supplyProperty"] == null ? "" : $row["supplyProperty"]), 'Type' => $row["supTypeID"]);	
	}
	else
		$arraySupplyInfo[] = array('message' => 'Connection Error');	

	jsEncode($arraySupplyInfo);

?>