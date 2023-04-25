<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `campusID`, `campusCode`, `campusName` FROM `tblcampus`");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayCampus[] = array('ID' => $row["campusID"], 'Code' => $row["campusCode"], 'Name' => $row["campusName"]);	
	}
	$result = null;
?>