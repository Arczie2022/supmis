<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `chartID`, `chartCode`, `chartName` FROM `tblchartaccount` WHERE  `chartName` LIKE :name OR `chartCode` LIKE :code ORDER BY `chartName`");
	$result->execute([":code"=>'%'.POST("ID").'%',":name"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayChart[] = array('message' => 'success', 'ID' => $row["chartID"], 'Code' => $row["chartCode"], 'Name' => $row["chartName"]);	
	}
	
	jsEncode($arrayChart);
	$result = null;
?>