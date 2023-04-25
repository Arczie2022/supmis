<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `userID`, `userType` FROM `tblaccountlevel` WHERE `userID` != 1 AND `userID` != 9 AND `userID` != 0");
	$result->execute();
	
	while($row = $result->fetch()){
		$arrayUserLevel[] = array('ID' => $row["userID"], 'Level' => $row["userType"]);	
	}
	
	$result = null;
?>