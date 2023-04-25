<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblstock`.`supplyID`, `supplyName`, `supplyCode`, `supplyDesc`, `supplyPurpose`, `supplyUnit`, `supplyPrice`, `tblstock`.`descID` FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID`  WHERE `poID` = :PO AND `DRCode` = :DR"); 
	$result->execute([":PO" => POST("PO"), ":DR" => POST("DR")]);

	while($row = $result->fetch()){
		$supply = $row["supplyCode"];
		$supply = ($supply == "" || $supply == null ? $row["supplyName"] : $row["supplyName"] . " (" . $supply . ")");
		
		$purpose = $row["supplyPurpose"];
		$purpose = ($purpose == "" || $purpose == null ? "-" : $purpose);
		
		$desc = $row["supplyDesc"];
		$desc = ($desc == "" || $desc == null ? "-" : $desc);
		$arrayDRDetails[] = array("message" => "success", 'ID' => $row["supplyID"], 'descID' => $row["descID"], 'Supply' => $supply, 'Description' => $desc, 'Purpose' => $purpose, 'Unit' => $row["supplyUnit"], 'Price' => $row["supplyPrice"]);
	}
	jsEncode($arrayDRDetails);
	$result = null;
?>