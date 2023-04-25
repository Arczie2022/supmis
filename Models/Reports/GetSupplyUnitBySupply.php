<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyUnit` FROM `tblsupplydesc` WHERE `supplyID` = :Supply GROUP BY `supplyUnit`");
	$result->execute([":Supply" => POST("Supply")]);

	while($row = $result->fetch()){
		$arrayUnit[] = array("message" => "success", 'Unit' => $row["supplyUnit"]);
	}

	jsEncode($arrayUnit);
?>