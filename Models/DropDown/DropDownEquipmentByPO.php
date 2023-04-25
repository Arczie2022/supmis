<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblstock`.`supplyID`, `supplyCode`, `supplyName` FROM `tblstock` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` WHERE `poID` = :ID GROUP BY `tblstock`.`supplyID`");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayEquipment[] = array("message" => "success", 'ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"]);
	}

	jsEncode($arrayEquipment);

?>