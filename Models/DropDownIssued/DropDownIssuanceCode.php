<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT * FROM (SELECT `tblics`.`icsID` as `ID`, `icsCode` as `code`, `icsDate` as `date` FROM `tblreissue` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` UNION SELECT `tblpare`.`pareID` as `ID`, `pareCode` as `code`, `pareDateRequest` as `date` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblpare` ON `tblparedet`.`pareID` = `tblpare`.`pareID` UNION SELECT `tblris`.`risID` as `ID`, `risCode` as `code`, `risDate` as `date` FROM `tblris` INNER JOIN `tblrisdet` ON `tblrisdet`.`risID` = `tblris`.`risID` WHERE `risStatus` != 0) as `table` WHERE `code` LIKE :ID");
	$result->execute([":ID"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayIssuance[] = array('message' => 'success', 'ID' => $row["ID"], 'Name' => $row["code"], 'Date' => $row["date"]);	
	}
	
	jsEncode($arrayIssuance);
	$result = null;
?>