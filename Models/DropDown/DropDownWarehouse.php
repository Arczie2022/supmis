<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT `warehouseID`, `warehouseCode`, `warehouseName` FROM `tblwarehouse` WHERE `warehouseID` != (SELECT `warehouseID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `tblaccount`.`accountID` = :ID)"); 
	$result->execute([":ID" => $_SESSION["SUPMIS"]["supmis_ID"]]);
	while($row = $result->fetch()){
		$arrayDropDownWarehouse[] = array('ID' => $row["warehouseID"], 'Code' => $row["warehouseCode"], 'Name' => $row["warehouseName"]);
	}
?>