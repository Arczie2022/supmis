<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblpo`.`poID`, `poDateReceipt`, `poCode` FROM `tblpo` INNER JOIN `tblstock` ON `tblstock`.`poID` = `tblpo`.`poID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE `chartID_Acc` != `chartID_SPMO`"); 
	$result->execute();

	while($row = $result->fetch()){
		$arrayPO[] = array("message" => "success", 'ID' => $row["poID"], 'Date' => $row["poDateReceipt"], 'poCode' => $row["poCode"]);
	}

	jsEncode($arrayPO);
	$result = null;
?>