<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `reissueID`, `reissueDate`, IFNULL(`icsCode`, `pareCode`) as `issuanceCode`, `supplyName`, `reissueSerial`, `accountName` FROM `tblreissue` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` LEFT JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` LEFT JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` LEFT JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` LEFT JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` WHERE `parentID` = :ID ORDER BY `reissueID` DESC");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayHistory[] = array("message" => "success", 'ID' => $row["reissueID"], 'Date' => $row["reissueDate"], 'Code' => $row["issuanceCode"], 'Supply' => $row["supplyName"], 'Serial' => $row["reissueSerial"], 'Employee' => $row["accountName"]);
	}
	jsEncode($arrayHistory);
	$result = null;
?>