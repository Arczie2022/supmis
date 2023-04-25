<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `majorID`, `majorDesc`, `repairStart`, `repairEnd`, `repairAmount`, `chartName`, `chartCode` FROM `tblbuildingrepair` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblbuildingrepair`.`chartID_Acc` WHERE `buildingID` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$chart = $row["chartName"] . " (" . $row["chartCode"] . ")";

		$arrayMajor[] = array("message" => "success", 'ID' => $row["majorID"], 'Description' => $row["majorDesc"], 'StartDate' => $row["repairStart"], 'EndDate' => $row["repairEnd"], 'Cost' => $row["repairAmount"], 'chartID' => $row["chartID"], 'Chart' => $chart);
	}

	jsEncode($arrayMajor);
	$result = null;
?>