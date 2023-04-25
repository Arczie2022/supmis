<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `fundID`, `fundCode`, `fundName`, `fundLegend` FROM `tblfundcluster`");
	$result->execute();
	while($row = $result->fetch()){
		$arrayFund[] = array('message' => 'success', 'ID' => $row["fundID"], 'Code' => $row["fundCode"], 'Name' => $row["fundName"], 'Legend' => $row["fundLegend"]);
	}
	jsEncode($arrayFund);
?>