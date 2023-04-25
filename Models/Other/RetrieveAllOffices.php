<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `officeID`, `officeCode`, `officeName`, `tbloffices`.`campusID`, `campusCode`, `campusName` FROM `tbloffices` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `tbloffices`.`officeID` != 0"); 
	$result->execute();
	while($row = $result->fetch()){
		$arrayCampus[] = array('message' => 'success', 'ID' => $row["officeID"], 'Code' => $row["officeCode"], 'Name' => $row["officeName"], 'CampusID' => $row["campusID"], 'Campus' => $row["campusName"] . " (" . $row["campusCode"] . ")");
	}

	jsEncode($arrayCampus);

?>