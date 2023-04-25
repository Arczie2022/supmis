<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `papID`, `papCode`, `papName` FROM `tblpap`");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayPAP[] = array('ID' => $row["papID"], 'Code' => $row["papCode"], 'Name' => $row["papName"]);	
	}
	jsEncode($arrayPAP);
	$result = null;
?>