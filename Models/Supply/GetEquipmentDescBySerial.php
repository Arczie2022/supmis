<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `supplyName`, `supplyDesc` FROM `tblreissue` INNER JOIN `tblreissuedet` ON `tblreissuedet`.`reissuedetID` = `tblreissue`.`parentID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblreissuedet`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` WHERE `tblreissue`.`reissueID` = :ID"); 
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		$arrayDesc[] = array("message" => "success", 'Name' => $row["supplyName"], 'Desc' => $row["supplyDesc"]);
	}

	jsEncode($arrayDesc);

?>