<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	$result = $db->prepare("SELECT `tblicsdet`.`icsID`, `icsCode`, `supplyName`, `supplyCode`, COUNT(`icsCode`) as `icsQuantity` FROM `tblicsdet` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` WHERE NOT `tblicsdet`.`icsdetID` IN (SELECT `icsdetID` FROM `tblreissue` WHERE `icsdetID` != 0) AND `officerIDTo` = :ID GROUP BY `icsCode`, `supplyName`");
	$result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"]]);
	while($row = $result->fetch()){
		$arrayICSReissuance[] = array('message' => 'success', 'ID' => $row["icsID"],'detailsID' => $row["icsdetID"], 'Code' => $row["icsCode"], 'Supply' => $row["supplyName"], 'supplyCode' => $row["supplyCode"], 'Quantity' => $row["icsQuantity"]);
	}

	jsEncode($arrayICSReissuance);

?>