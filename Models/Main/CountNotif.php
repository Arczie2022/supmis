<?php
	session_start();
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT 
		IFNULL((SELECT COUNT(`tblris`.`risID`) FROM `tblris` INNER JOIN `tblrisdet` ON `tblris`.`risID` = `tblrisdet`.`risID` WHERE `risStatus` = 4 AND `risSource` = 1),0) as `pending_request_ris`, 
		IFNULL((SELECT COUNT(`tblris`.`risID`) FROM `tblris` INNER JOIN `tblrisdet` ON `tblris`.`risID` = `tblrisdet`.`risID` WHERE `risStatus` = 0 AND `risSource` = (SELECT `campusID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountID` = ?) AND `risSource` != 1),0) as `pending_request_ris_campus`, 
		IFNULL((SELECT COUNT(`tblris`.`risID`) FROM `tblris` INNER JOIN `tblrisdet` ON `tblris`.`risID` = `tblrisdet`.`risID` WHERE `tblrisdet`.`risID` IN (SELECT `tblrisdet`.`risID` FROM `tblrisdet` INNER JOIN `tblris` ON `tblris`.`risID` = `tblrisdet`.`risID` WHERE `risStatus` = 0 AND `risSource` = 1 GROUP BY `tblrisdet`.`risID`)), 0) as `approval_ris`, 
		IFNULL((SELECT COUNT(`risppeID`) FROM `tblrisppe` WHERE  `risppeStatus` = 0),0) as `issuance_ics_par`,
		IFNULL((SELECT COUNT(`tblicsdet`.`icsID`) FROM `tblicsdet` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID`  WHERE NOT `tblicsdet`.`icsdetID` IN (SELECT `icsdetID` FROM `tblreissue` WHERE `icsdetID` != 0) AND `officerIDTo` = ? ), 0) as `reissue_ics`,
		IFNULL((SELECT COUNT(`tblparedet`.`pareID`) FROM `tblparedet` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` WHERE NOT `tblparedet`.`paredetID` IN (SELECT `paredetID` FROM `tblreissue` WHERE `paredetID` != 0) AND `officerIDTo` = ? ), 0) as `reissue_par`,
		IFNULL((SELECT COUNT(`purchaseID`) FROM `tblpurchase`  WHERE `IsApproved` = 0),0) as `purchase_request`,
		IFNULL((SELECT COUNT(`returnID`)  FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `campusID` = (SELECT `campusID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblaccount`.`accountID` = ? ) AND `tblreturn`.`isReturn` = 1),0) as `return_dept`,
		IFNULL((SELECT COUNT(`returnID`) FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID`  INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblreturn`.`isReturn` = 2),0) as `return_SPMO`, 
		IFNULL((SELECT COUNT(`returnID`) FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `campusID` = (SELECT `campusID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblaccount`.`accountID` = ? ) AND `tblreturn`.`isReturn` = 7), 0) as `repair`,
		IFNULL((SELECT  COUNT(`returnID`) FROM `tblreissue` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblwarehousedet` ON `tblwarehousedet`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblwarehousedet`.`OfficerID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `reissueStatus` = 3 AND `warehouseStatus` = 1 AND `warehouseID` = (SELECT `warehouseID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `tblaccount`.`accountID` = ?)),0) as `warehouse_stock`,
		IFNULL((SELECT COUNT(`disposepartsID`) FROM `tbldisposeparts` WHERE `tbldisposeparts`.`officerID` = 0), 0) as `dispose_parts`,
		IFNULL((SELECT COUNT(`tblreturn`.`returnID`) FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID`  AND `returnID` IN (SELECT MAX(`returnID`) FROM `tblreturn` GROUP BY `reissueID` ) AND NOT `tblreturn`.`reissueID` IN (SELECT `reissueID` FROM `tbldispose`) INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblreturn`.`isReturn` = 3),0) as `dispose_item`
		");
	$result->execute([$_SESSION["SUPMIS"]["supmis_ID"], $_SESSION["SUPMIS"]["supmis_ID"], $_SESSION["SUPMIS"]["supmis_ID"], $_SESSION["SUPMIS"]["supmis_ID"], $_SESSION["SUPMIS"]["supmis_ID"], $_SESSION["SUPMIS"]["supmis_ID"]]);
	$row = $result->fetch();

	$pending_request_ris = $row["pending_request_ris"];
	$pending_request_ris_campus = $row["pending_request_ris_campus"];
	$approval_ris = $row["approval_ris"];
	$issuance_ics_par = $row["issuance_ics_par"];
	$reissue_ics = $row["reissue_ics"];
	$reissue_par = $row["reissue_par"];
	$purchase_request = $row["purchase_request"];
	$return_dept = $row["return_dept"];
	$return_SPMO = $row["return_SPMO"];
	$repair = $row["repair"];
	$warehouse_stock = $row["warehouse_stock"];
	$dispose_parts = $row["dispose_parts"];
	$dispose_item = $row["dispose_item"];

	function checkLevelNotif($params){
		switch ($params) {
			case 'spmo':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "3";
			case 'stockroom':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "5";
			case 'dept':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "4";
			case 'accounting':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "6";
			case 'spmo_dept':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "3" || $_SESSION["SUPMIS"]["supmis_level"] == "4";
			case 'spmo_stockroom':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "3" || $_SESSION["SUPMIS"]["supmis_level"] == "5";
			case 'supplyofficer':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "3" || $_SESSION["SUPMIS"]["supmis_level"] == "4" || $_SESSION["SUPMIS"]["supmis_level"] == "5";
			case 'allofficer':
				return $_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "3" || $_SESSION["SUPMIS"]["supmis_level"] == "4" || $_SESSION["SUPMIS"]["supmis_level"] == "5" || $_SESSION["SUPMIS"]["supmis_level"] == "6";
			default:
				return false;
		}
	}
	
	$pending_request_ris = intval($pending_request_ris) > 0 && checkLevelNotif("stockroom");
	$pending_request_ris_campus = intval($pending_request_ris_campus) > 0 && checkLevelNotif("dept");
	$approval_ris = intval($approval_ris) > 0 && checkLevelNotif("spmo");
	$issuance_ics_par = intval($issuance_ics_par) > 0 && checkLevelNotif("spmo");
	$reissue_ics = intval($reissue_ics) > 0 && checkLevelNotif("spmo_dept");
	$reissue_par = intval($reissue_par) > 0 && checkLevelNotif("spmo_dept");
	$purchase_request = intval($purchase_request) > 0 && checkLevelNotif("spmo");
	$return_dept = intval($return_dept) > 0 && checkLevelNotif("spmo_dept");
	$return_SPMO = intval($return_SPMO) > 0 && checkLevelNotif("spmo");
	$repair = intval($repair) > 0 && checkLevelNotif("spmo_dept");
	$warehouse_stock = intval($warehouse_stock) > 0 && checkLevelNotif("spmo_dept");
	$dispose_parts = intval($dispose_parts) > 0 && checkLevelNotif("spmo");
	$dispose_item = intval($dispose_item) > 0 && checkLevelNotif("spmo");
	$reissue = $reissue_ics || $reissue_par;

	$GLOBALS["arrayNotif"] = array(
		"pending_request_ris" => $pending_request_ris,
		"pending_request_ris_campus" => $pending_request_ris_campus,
		"approval_ris" => $approval_ris,
		"issuance_ics_par" => $issuance_ics_par,
		"reissue" => $reissue,
		"purchase_request" => $purchase_request,
		"return_dept" => $return_dept,
		"return_SPMO" => $return_SPMO,
		"repair" => $repair,
		"warehouse_stock" => $warehouse_stock,
		"dispose_parts" => $dispose_parts,
		"dispose_item" => $dispose_item
	);

?>