<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT * FROM (SELECT `icsPO` as `PONo` FROM `tblreissue` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID`INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID`  UNION SELECT `parePO` as `PONo` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblpare` ON `tblparedet`.`pareID` = `tblpare`.`pareID` ) as `table` WHERE `PONo` LIKE :ID");
	$result->execute([":ID"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayPO[] = array('message' => 'success', 'ID' => $row["PONo"], 'Name' => $row["PONo"]);	
	}
	
	jsEncode($arrayPO);
	$result = null;
?>