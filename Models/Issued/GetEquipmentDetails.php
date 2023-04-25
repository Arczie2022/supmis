<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblstock`.`supplyID`, `supplyName`, `supplyCode`, `supplyProperty`, `chartID_Acc`, `chartCode`, `chartName`, `chartLife`, SUM(`stockAvailable`) as `stockAvailable`, `supplyDesc` FROM `tblstock` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `tblstock`.`descID` = :ID"); 
	$result->execute([":ID" => POST("descID")]);

	while($row = $result->fetch()){
		$arrayEquipDetails[] = array("message" => "success", 'ID' => $row["supplyID"],  'Code' => $row["supplyCode"],  'Name' => $row["supplyName"],  'Property' => $row["supplyProperty"],  'Chart' => $row["chartID_Acc"],  'chartCode' => $row["chartCode"],  'chartName' => $row["chartName"],  'Life' => $row["chartLife"],  'Stock' => $row["stockAvailable"],  'Specific' => $row["supplyDesc"]);
	}

	jsEncode($arrayEquipDetails);

	$result = null;

?>