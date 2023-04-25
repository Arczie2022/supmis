<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `fundName`, `papName`, `supplyCode`, `supplyName`, `supplyUnit`, `supplyPrice`, SUM(`stockAvailable`) as `stockAvailable`, SUM(`stockBalance`) as `stockBalance` FROM `tblpo` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` LEFT JOIN `tblpap` ON `tblpap`.`papID` = `tblpo`.`papID` INNER JOIN `tblstock` ON `tblstock`.`poID` = `tblpo`.`poID` INNER JOIN `tblsupplydesc` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` WHERE `tblpo`.`poID` = :ID GROUP BY `tblsupplydesc`.`supplyID`, `supplyPrice`, `supplyUnit`"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayPOInfo[] = array("message" => "success", 'Fund' => $row["fundName"], 'PAP' => $row["papName"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Unit' => $row["supplyUnit"], 'Price' => $row["supplyPrice"], 'Item' => $row["stockBalance"] . " / " . $row["stockAvailable"], 'Total' => (floatval($row["supplyPrice"]) * floatval($row["stockAvailable"])));
	}
	jsEncode($arrayPOInfo);

	$result = null;
?>