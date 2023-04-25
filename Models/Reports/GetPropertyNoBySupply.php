<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyProperty` FROM `tblsupply` WHERE `supplyID` = :ID");
	$result->execute([":ID"=>POST("ID")]);

	if($row = $result->fetch())
		$arrayProperty[] = array('message' => 'success', 'Property' => $row["supplyProperty"]);
	else
		$arrayProperty[] = array("message" => "success", 'Property' => "");
	echo (json_encode($arrayProperty));
	$result = null;

?>