<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `campusID`, `campusCode`, `campusName` FROM `tblcampus` WHERE `warehouseID` != 1"); 
	$result->execute();
	while($row = $result->fetch()){
		$arrayStockCampus[] = array('ID' => $row["campusID"], 'Code' => $row["campusCode"], 'Name' => $row["campusName"]);
	}
?>