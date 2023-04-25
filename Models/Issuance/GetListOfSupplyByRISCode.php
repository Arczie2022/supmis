<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblris`.`risID`, `tblrisdet`.`risdetID`, `tblsupply`.`supplyID`, `supplyCode`, `supplyName`, `supplyDesc`, `risQuantity`, `risAvailable`, `supplyUnit`, `tblrisdet`.`risStatus`, `statusDesc`, `risRemarks` FROM `tblris` INNER JOIN `tblrisdet` ON `tblris`.`risID` = `tblrisdet`.`risID` INNER JOIN `tblsupply` ON `tblrisdet`.`supplyID` = `tblsupply`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`supplyID` = `tblsupply`.`supplyID` INNER JOIN `tblstatus` ON `tblrisdet`.`risStatus` = `tblstatus`.`statusNo` AND `tblstatus`.`statusTable` = 'RIS'  WHERE `risCode` = :ID GROUP BY `tblrisdet`.`risdetID`"); 
	$result->execute([":ID"=>POST("code")]);

	while($row = $result->fetch()){
		$remarks = ($row["statusDesc"] == "-" ? "-" : $row["risRemarks"]);
		$supply = ($row["supplyCode"] == "" ? $row["supplyName"] : $row["supplyName"] ." (" . $row["supplyCode"] .")");
		$status = intval($row["risAvailable"]) > 0 ? "Available" : "Not Available";
		$arraySupply[] = array('message' => 'success', 'ID' => $row["risID"], 'risdetID' => $row["risdetID"],  'Supply' => $supply,  'Quantity' => $row["risQuantity"], 'SupplyID' => $row["supplyID"],  'Available' => $row["risAvailable"],  'Unit' => $row["supplyUnit"],  'Desc' => $row["supplyDesc"],  'Status' => $status,  'StatusNo' => $row["risStatus"],  'Remarks' => $remarks);
	}
	if(empty($arraySupply)) $arraySupply[] = array('message' => 'Connection Error');

	jsEncode($arraySupply);
	$result = null;
?>