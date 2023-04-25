<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyPrice`, `supplyUnit`, `supplyDesc` FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE `tblstock`.`supplyID` = :Equipment AND `poID` = (SELECT `poID` FROM `tblpo` WHERE `poCode` =:PO)"); 
	$result->execute([":Equipment" => POST("Equipment"), ":PO" => POST("PO")]);
	while($row = $result->fetch()){
		$arrayPrice[] = array("message" => "success", 'Price' => $row["supplyPrice"], 'Unit' => $row["supplyUnit"], 'Specific' => $row["supplyDesc"]);
	}
	$arrayPrice[] = array("message" => "success", 'Price' => "0");
	jsEncode($arrayPrice);
	$result = null;
?>