<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `fundID`, `fundCode`, `fundName` FROM `tblfundcluster`");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayFund[] = array('ID' => $row["fundID"], 'Code' => $row["fundCode"], 'Name' => $row["fundName"]);	
	}
	
	$result = null;
?>