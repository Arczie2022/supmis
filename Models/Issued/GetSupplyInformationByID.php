<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblsupply`.`supplyID`, `supplyCode`, `supplyName`, `supplyProperty`, `chartName`, `chartCode`, `chartLife` FROM `tblsupplydesc` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` INNER JOIN  `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `descID` = :ID"); 
	$result->execute([":ID"=>POST("desc")]);

	if($row = $result->fetch())
		$arrayEquipment[] = array('message' => 'success', 'ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Property' => $row["supplyProperty"], 'Chart' => $row["chartName"] . " (" . $row["chartCode"] . ")", 'Life' => $row["chartLife"]);
	else
		$arrayEquipment[] = array('message' => 'Connection Error');

	echo (json_encode($arrayEquipment));
	$result = null;
?>