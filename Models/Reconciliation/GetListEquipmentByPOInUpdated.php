<?php
	require '../../Models/Connection/connection_token.php';
	$result = $db->prepare("SELECT `tblsupplydesc`.`descID`, `supplyCode`, `supplyName`, `supplyDesc`, `supplyPurpose`, `supplyPrice`, `spmo`.`chartCode` as `spmoCode`, `spmo`.`chartName` as `spmoName`, `Acc`.`chartCode` as `accCode`, `Acc`.`chartName` as `accName` FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN `tblchartaccount` `spmo` ON `spmo`.`chartID` = `tblsupplydesc`.`chartID_SPMO` INNER JOIN `tblchartaccount` `acc` ON `acc`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `chartID_Acc` != `chartID_SPMO` AND `poID` = :ID"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$spmo = $row["spmoName"] . " (" . $row["spmoCode"] . ")";
		$acc = $row["accName"] . " (" . $row["accCode"] . ")";
		$arraySupply[] = array("message" => "success", 'ID' => $row["descID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Description' => $row["supplyDesc"], 'Purpose' => $row["supplyPurpose"], 'Price' => $row["supplyPrice"], 'SPMO_Chart' => $spmo, 'Acc_Chart' => $acc);
	}

	jsEncode($arraySupply);
	$result = null;
?>