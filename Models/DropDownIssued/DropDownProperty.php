<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `reissueProperty` FROM `tblreissue` WHERE `reissueProperty` LIKE :ID");
	$result->execute([":ID"=>'%'.POST("ID").'%']);

	while($row = $result->fetch()){
		$arrayProperty[] = array("message" => "success", 'ID' => $row["reissueProperty"], 'Name' => $row["reissueProperty"]);
	}
	jsEncode($arrayProperty);
?>