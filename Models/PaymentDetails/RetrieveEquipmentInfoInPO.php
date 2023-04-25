<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `stockID`, `tblsupplydesc`.`descID`, `tblpo`.`poID`, `poCode`, `poDateReceipt`, `DRCode`, `DRDate`, `supplierName`, `fundCode`, `fundName`, `papName`, `tblsupplydesc`.`chartID_SPMO`, `chartCode`, `chartName`, `Consumable`, `Warranty`, `IsReplace`, `replaceParts`, `stockAvailable`, `supplyUnit`, `supplyPrice`, `supplyDesc`, `supplyPurpose` FROM `tblstock` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` INNER JOIN `tblsupplier` ON `tblsupplier`.`supplierID` = `tblpo`.`supplierID` LEFT JOIN `tblpap` ON `tblpap`.`papID` = `tblpo`.`papID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_SPMO` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` WHERE `tblsupplydesc`.`descID` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayInfo[] = array("message" => "success", "stockID" => $row["stockID"], "descID" => $row["descID"], "poID" => $row["poID"], "poCode" => $row["poCode"], "poDateReceipt" => $row["poDateReceipt"], "DRCode" => $row["DRCode"], "DRDate" => $row["DRDate"], "supplierName" => $row["supplierName"], "fundCode" => $row["fundCode"], "fundName" => $row["fundName"], "papName" => $row["papName"], "chartID" => $row["chartID_SPMO"], "chartCode" => $row["chartCode"], "chartName" => $row["chartName"], "Consumable" => $row["Consumable"], "Warranty" => $row["Warranty"], "IsReplace" => $row["IsReplace"], "replaceParts" => $row["replaceParts"], "stockAvailable" => $row["stockAvailable"], "supplyUnit" => $row["supplyUnit"], "supplyPrice" => $row["supplyPrice"], "supplyDesc" => $row["supplyDesc"], "supplyPurpose" => $row["supplyPurpose"]);
	}

	jsEncode($arrayInfo);
?>