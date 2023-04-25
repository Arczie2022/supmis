<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `componentID`, IFNULL(`supplyCode`, '-') as `supplyCode`, `supplyName`, `chartCode`, `chartName`, `supplyDesc`, `supplyPurpose`, `supplyPrice` FROM `tblcomponent` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblcomponent`.`componentSupply` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblcomponent`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `mainSupply` = :ID"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$supply = $row["supplyCode"] == "-" ?  $row["supplyName"] :  $row["supplyName"] . " [" .  $row["supplyCode"] . "]";

		$arrayComponent[] = array("message" => "success", 'ID' => $row["componentID"], 'Supply' => $supply, 'Chart' => $row["chartName"] . " (" . $row["chartCode"].")", "Price" => $row["supplyPrice"], "Description" => $row["supplyDesc"], "Purpose" => $row["supplyPurpose"]);	
	}
	jsEncode($arrayComponent);
	$result = null;
?>