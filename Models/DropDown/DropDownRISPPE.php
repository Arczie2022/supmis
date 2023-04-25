<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `risppeID`, `risppeCode`, `accountName` FROM `tblrisppe` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblrisppe`.`employeeID` WHERE (`risppeCode` LIKE :code OR `accountName` LIKE :name) AND `risppeStatus` = 0"); 
	$result->execute([":code" => "%".POST("ID")."%", ":name" =>  "%".POST("ID")."%"]);
	
	while($row = $result->fetch()){
		$arrayRISPPE[] = array('ID' => $row["risppeID"], 'Code' => $row["risppeCode"], 'Name' => $row["accountName"]);	
	}

	jsEncode($arrayRISPPE);
?>