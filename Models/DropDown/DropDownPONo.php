<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poID`, `poCode` FROM `tblpo` WHERE `poCode` LIKE :Code");
	$result->execute([":Code" => "%".POST("ID")."%"]);

	while($row = $result->fetch()){
		$arrayPO[] = array("message" => "success", 'ID' => $row["poID"], 'Name' => $row["poCode"]);
	}

	jsEncode($arrayPO);

	$result = null;
?>