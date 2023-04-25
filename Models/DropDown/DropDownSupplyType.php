<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `supTypeID`, `supTypeName` FROM `tblsupplytype` WHERE `supTypeID` != 0");
	$result->execute();

	while($row = $result->fetch()){
		$arraySupplyType[] = array('ID' => $row["supTypeID"], 'Name' => $row["supTypeName"]);
	}

	$result = null;

?>