<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblris`.`risID`, `risCode` FROM `tblris` INNER JOIN `tblrisdet` ON `tblrisdet`.`risID` = `tblris`.`risID` WHERE `risNew` = 0 AND `risCode` LIKE :ID");
	$result->execute([":ID"=>'%'.POST("ID").'%']);
	
	while($row = $result->fetch()){
		$arrayOldRIS[] = array('message' => 'success', 'ID' => $row["risID"], 'Name' => $row["risCode"]);	
	}
	
	jsEncode($arrayOldRIS);
	$result = null;
?>