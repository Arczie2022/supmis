<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `poCode`, `poDateReceipt`, `repairStart`, `repairEnd`, `supplierName`, `tblpo`.`supplierID`, `majorDesc`, `chartName`, `chartID`, `papID`, `fundID`, `repairNature`, `repairAmount` FROM `tblbuildingrepair` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblbuildingrepair`.`poID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblbuildingrepair`.`chartID_Acc` WHERE `majorID` = :ID"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayMajorRepair[] = array("message" => "success", 'poCode' => $row["poCode"], 'poDateReceipt' => $row["poDateReceipt"], 'repairStart' => $row["repairStart"], 'repairEnd' => $row["repairEnd"], 'supplierName' => $row["supplierName"], 'supplierID' => $row["supplierID"], 'majorDesc' => $row["majorDesc"], 'chartName' => $row["chartName"], 'chartID' => $row["chartID"], 'papID' => $row["papID"], 'fundID' => $row["fundID"], 'repairNature' => $row["repairNature"], 'repairAmount' => $row["repairAmount"]);
	}

	jsEncode($arrayMajorRepair);
	$result = null;
?>