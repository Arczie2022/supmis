<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblris`.`risID`, `supplyCode`, `supplyName`, `risQuantity`, `supplyUnit`, `statusDesc`, `risRemarks` FROM `tblris` INNER JOIN `tblrisdet` ON `tblris`.`risID` = `tblrisdet`.`risID` INNER JOIN `tblsupply` ON `tblrisdet`.`supplyID` = `tblsupply`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`supplyID` = `tblsupply`.`supplyID` INNER JOIN `tblstatus` ON `tblrisdet`.`risStatus` = `tblstatus`.`statusNo` AND `tblstatus`.`statusTable` = 'Supply' WHERE `risCode` = :ID GROUP BY `risdetID`"); $result->execute([":ID"=>POST("code")]);

	while($row = $result->fetch()){
		$remarks = ($row["statusDesc"] == "-" ? "-" : $row["risRemarks"]);
		$supply = ($row["supplyCode"] == "" ? $row["supplyName"] : $row["supplyName"] ." (" . $row["supplyCode"] .")");
		$arraySupply[] = array('message' => 'success', 'ID' => $row["risID"],  'Supply' => $supply,  'Quantity' => $row["risQuantity"],  'Unit' => $row["supplyUnit"],  'Status' => $row["statusDesc"],  'Remarks' => $remarks);
	}
	if(empty($arraySupply)) $arraySupply[] = array('message' => 'Connection Error');

	echo (json_encode($arraySupply));
	$result = null;
?>