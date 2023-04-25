<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblsupply`.`supplyID`, `supplyCode`, `supplyName`, `supplyProperty`, IFNULL(`chartName`, '-') as `chartName`, IFNULL(`chartCode`, '-') as `chartCode`, IFNULL(`supplyPrice`, '-') as `supplyPrice` FROM `tblsupply` LEFT JOIN `tblstock` ON `tblstock`.`supplyID` = `tblsupply`.`supplyID` LEFT JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` LEFT JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `supTypeID` = 8"); 
	$result->execute();

	while($row = $result->fetch()){
		$chart = $row["chartName"] . " (" . $row["chartCode"] . ")";
		$chart = $chart == "- (-)" ? "-" : $chart;
		$arrayBuildings[] = array("message" => "success", 'ID' => $row["supplyID"], 'Code' => $row["supplyCode"], 'Name' => $row["supplyName"], 'Property' => $row["supplyProperty"], 'Chart' => $chart, 'Price' => $row["supplyPrice"]);
	}

	jsEncode($arrayBuildings);
	$result = null;
?>