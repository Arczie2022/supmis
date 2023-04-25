<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `papID`, `papName` FROM `tblpap`");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayPAP[] = array('ID' => $row["papID"], 'Name' => $row["papName"]);	
	}
	$result = null;
?>