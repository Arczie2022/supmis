<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblparedet`.`pareID`, `pareCode`, `supplyName`, `supplyCode`, COUNT(`pareCode`) as `pareQuantity` FROM `tblparedet` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` WHERE NOT `tblparedet`.`paredetID` IN (SELECT `paredetID` FROM `tblreissue` WHERE `paredetID` != 0) AND `officerIDTo` = :ID GROUP BY `pareCode`, `supplyName`");
	$result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"]]);

	while($row = $result->fetch()){
		$arrayPAREReissuance[] = array('message' => 'success', 'ID' => $row["pareID"], 'Code' => $row["pareCode"], 'Supply' => $row["supplyName"], 'supplyCode' => $row["supplyCode"], 'Quantity' => $row["pareQuantity"]);
	}

	jsEncode($arrayPAREReissuance);
?>