<?php
	require '../../Models/Connection/connection_token.php';

	$query = "";

	switch (POST("Type")) {
		case '2':
			$query = "SELECT `tblreissue`.`parentID`, `tblreissue`.`reissueID`, `reissueStatus`, `reissueSerial`, `reissueProperty`, `supplyDesc` as `remarks` FROM `tblreissue` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` WHERE `icsID` = :ID AND `tblicsdet`.`descID` = :descID"; 
			break;
		case '3':
			$query = "SELECT `tblreissue`.`parentID`, `tblreissue`.`reissueID`, `reissueStatus`, `reissueSerial`, `reissueProperty`, `supplyDesc` as `remarks` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` WHERE `pareID` = :ID AND `tblparedet`.`descID` = :descID"; 
			break;
		default:
			$query = "";
			break;
	}

	if($query != ""){
		$result = $db->prepare($query);
		$result->execute([":ID"=>POST("ID"),":descID"=>POST("desc")]);
		while($row = $result->fetch()){
			$arraySerial[] = array('message' => 'success', 'ID' => $row["reissueID"], 'parentID' => $row["parentID"], 'Status' => $row["reissueStatus"], 'Serial' => $row["reissueSerial"], 'Property' => $row["reissueProperty"], 'Remarks' => $row["remarks"]);
		}
	}
	else $arraySerial[] = array('message' => 'Connection Error');


	echo (json_encode($arraySerial));
	$result = null;

?>
