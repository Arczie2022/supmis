<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `returnDate`, `icsDate` as `issuedDate`, `icsCode` as `issuedCode`, `supplyCode`, `supplyName`, `reissueProperty`, `reissueSerial`, `supplyDesc` as `issuedRemarks` FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreturn`.`reissueID` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` WHERE `returnID` = :ID_ICS UNION SELECT `returnDate`, `pareDateRequest` as `issuedDate`, `pareCode` as `issuedCode`, `supplyCode`, `supplyName`, `reissueProperty`, `reissueSerial`, `supplyDesc` as `issuedRemarks` FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreturn`.`reissueID` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` WHERE `returnID` = :ID_PARE"); 
	$result->execute([":ID_ICS"=>POST("ID"),":ID_PARE"=>POST("ID")]);
	if($row = $result->fetch())
		$arrayReturnInfo[] = array('message' => 'success', 'returnDate' => $row["returnDate"], 'issuedDate' => $row["issuedDate"], 'issuedCode' => $row["issuedCode"], 'supplyCode' => $row["supplyCode"], 'supplyName' => $row["supplyName"], 'reissueProperty' => $row["reissueProperty"], 'reissueSerial' => $row["reissueSerial"], 'issuedRemarks' => $row["issuedRemarks"]);
	else
		$arrayReturnInfo[] = array('message' => 'Connection Error');

	echo (json_encode($arrayReturnInfo));
	$result = null;
?>