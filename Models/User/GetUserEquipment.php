<?php
	require '../../Models/Connection/connection_token.php';
	session_start();
	$result = $db->prepare("SELECT `reissueID`, `icsDate` as `date`, `supplyName`, `supplyCode`, `reissueSerial`, 'ICS' as `type` FROM `tblreissue` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblsupplydesc` ON `tblicsdet`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` WHERE `employeeID` = :ID_ICS AND `reissueStatus` = 0 AND `Consumable` = 'Non-Consumable' UNION SELECT `reissueID`, `pareDateRequest` as `date`, `supplyName`, `supplyCode`, `reissueSerial`, 'PARE' as `type` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblsupplydesc` ON `tblparedet`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` WHERE `employeeID` = :ID_PARE AND `reissueStatus` = 0 AND `Consumable` = 'Non-Consumable'"); 
	$result->execute([":ID_ICS"=>$_SESSION["SUPMIS"]["supmis_ID"], ":ID_PARE"=>$_SESSION["SUPMIS"]["supmis_ID"]]);
	while($row = $result->fetch()){
		$arrayUserEquipment[] = array("message" => "success", 'ID' => $row["reissueID"], 'Date' => $row["date"], 'Name' => $row["supplyName"], 'Code' => $row["supplyCode"], 'Serial' => $row["reissueSerial"], 'Type' => $row["type"]);
	}
	jsEncode($arrayUserEquipment);
	$result = null;
?>