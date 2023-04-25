<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `chartID`, `chartCode`, `chartName`, `chartLegend`, `chartLife` FROM `tblchartaccount`");
	$result->execute();
	while($row = $result->fetch()){
		$arrayChart[] = array('message' => 'success', 'ID' => $row["chartID"], 'Code' => $row["chartCode"], 'Name' => $row["chartName"], 'Legend' => $row["chartLegend"], 'Life' => $row["chartLife"]);
	}
	jsEncode($arrayChart);
?>