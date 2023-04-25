<?php 
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblstock`.`poID`, `poCode`, `stockID`, `supplyDesc`, `supplyPurpose`, `stockBalance`, `supplyUnit`, `supplyPrice` FROM `tblstock` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE `tblpo`.`fundID` = :Fund AND `tblstock`.`supplyID` = :Equipment AND `stockBalance` != 0");
	$result->execute([":Fund" => POST("Fund"), ":Equipment" => POST("Equipment")]);

	while($row = $result->fetch()){
		$arrayDesc[] = array("message" => "success", 'StockID' => $row["stockID"], 'poID' => $row["poID"], 'poCode' => $row["poCode"], 'Fund' => POST("Fund"), 'EquipmentID' => POST("Equipment"), 'EquipmentName' => POST("EquipmentName"), 'Desc' => $row["supplyDesc"], 'Purpose' => $row["supplyPurpose"], 'Balance' => $row["stockBalance"], 'Unit' => $row["supplyUnit"], 'Price' => $row["supplyPrice"]);
	}

	jsEncode($arrayDesc);
?>