<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyName`, `supplyProperty`, `supplyUnit`,SUM(`stockAvailable`) as `stocks`, MAX(`DRDate`) as `DRDate` FROM `tblstock` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE CONCAT(IF((FLOOR(ABS(((DATE(NOW()) - DATE(`DRDate`))/100)-(YEAR(NOW()) - YEAR(`DRDate`))*100))) != 0 AND YEAR(NOW()) - YEAR(`DRDate`) != 0, YEAR(NOW()) - YEAR(`DRDate`)-1, YEAR(NOW()) - YEAR(`DRDate`)), '.', FLOOR(ABS(((DATE(NOW()) - DATE(`DRDate`))/100)-(YEAR(NOW()) - YEAR(`DRDate`))*100)) ) > 0.5 AND `stockBalance` != 0 GROUP BY `tblstock`.`supplyID`");
	$result->execute();

	while($row = $result->fetch()){
		$arrayDormant[] = array("message" => "success", 'Supply' => $row["supplyName"], 'Property' => $row["supplyProperty"], 'Unit' => $row["supplyUnit"], 'Stock' => $row["stocks"], 'Date' => $row["DRDate"]);
	}

	jsEncode($arrayDormant);
?>