<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblsupply`.`supplyID`, `supplyCode`, `supplyName`, `chartID`, `chartCode`, `chartName`, `supplyUnit`, `supplyDesc`, `supplyPurpose`, `componentStock`, `supplyPrice` FROM `tblcomponent` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblcomponent`.`componentSupply` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblcomponent`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `componentID` = :ID"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayDetails[] = array("message" => "success", 'supplyID' => $row["supplyID"],  'supplyCode' => $row["supplyCode"],  'supplyName' => $row["supplyName"],  'chartID' => $row["chartID"],  'chartCode' => $row["chartCode"],  'chartName' => $row["chartName"],  'Unit' => $row["supplyUnit"],  'Description' => $row["supplyDesc"],  'Purpose' => $row["supplyPurpose"],  'Stock' => $row["componentStock"],  'Price' => $row["supplyPrice"]);
	}

	jsEncode($arrayDetails);
	$result = null;
?>