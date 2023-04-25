<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supTypeID`, `supTypeCode`, `supTypeName` FROM `tblsupplytype` WHERE `supTypeID` != 0");
	$result->execute();

	while($row = $result->fetch()){
		$arraySupplyType[] = array('ID' => $row["supTypeID"], 'Code' => $row["supTypeCode"], 'Name' => $row["supTypeName"]);
	}

	jsEncode($arraySupplyType);

	$result = null;

?>