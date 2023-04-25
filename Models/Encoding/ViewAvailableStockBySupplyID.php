<?php 
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `tblstock`.`stockID`, `supplyUnit`, IFNULL(`supplyDesc`, 'No Description') as `description`, SUM(`stockBalance`) as `stockAvailable`  FROM `tblsupply` INNER JOIN `tblstock` ON `tblstock`.`supplyID` = `tblsupply`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` WHERE `tblsupply`.`supplyID` = :supplyID  AND `stockBalance` != 0"); 
	$result->execute([":supplyID"=>POST("ID")]);
	while($row = $result->fetch()){
		$arrayStock[] = array('message' => 'success', 'ID' => $row["stockID"], 'Stock' => $row["stockAvailable"], 'Unit' => $row["supplyUnit"], 'Specific' => $row["description"]);
	}
	if (empty($arrayStock))
		$arrayStock[] = array('message' => 'success', 'Stock' => 'No Stock');
	echo (json_encode($arrayStock));
?>