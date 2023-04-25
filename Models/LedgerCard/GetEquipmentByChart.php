<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblstock`.`supplyID`, `supplyName`, IFNULL(`supplyCode`, '') as `supplyCode`, `chartLife` FROM `tblstock` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblchartaccount` ON `tblsupplydesc`.`chartID_Acc` = `tblchartaccount`.`chartID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` WHERE `chartID` = :ID GROUP BY `tblstock`.`supplyID`"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayEquipment[] = array("message" => "success", 'ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Life' => $row["chartLife"]);
	}
	if (empty($arrayEquipment)) 
		$arrayEquipment[] = array("message" => "No Equipment");
	
	jsEncode($arrayEquipment);

	$result = null;
?>