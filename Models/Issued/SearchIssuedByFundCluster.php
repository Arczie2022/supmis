<?php
	require '../../Models/Connection/connection_token.php';

	switch (POST("Type")) {
		case '1':
			$query = "SELECT `tblris`.`risID` as `ID`, `risDate` as `issueDate`, `risDate` as `reissueDate`, `risCode` as `code`, `officeName` FROM `tblrisdet` INNER JOIN `tblris` ON `tblrisdet`.`risID` = `tblris`.`risID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblris`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `fundID` = :Search GROUP BY `tblrisdet`.`risID`"; 
			break;
		case '2':
			$query = "SELECT `tblics`.`icsID` as `ID`, `icsDate` as `issueDate`, `reissueDate`, `officeName`, `icsCode` as `code`  FROM `tblreissue` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` WHERE `fundID` = :Search GROUP BY `tblics`.`icsID`";
			break;
		case '3':
			$query = "SELECT `tblpare`.`pareID` as `ID`, `pareDateRequest` as `issueDate`, `reissueDate`, `officeName`, `pareCode` as `code`  FROM `tblreissue` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` WHERE `fundID` = :Search GROUP BY `tblpare`.`pareID`";
			break;
		default:
			$query = "";
			break;
	}

	if($query != ""){
		$result = $db->prepare($query);
		$result->execute([":Search"=>POST("Search")]);
		while($row = $result->fetch()){
			$arraySearch[] = array('message' => 'success', 'ID' => $row["ID"], 'IssuedDate' => $row["issueDate"], 'ReissuedDate' => $row["reissueDate"],  'Office' => $row["officeName"],  'Code' => $row["code"]);
		}
		if(empty($arraySearch)) $arraySearch[] = array('message' => 'empty');
	}
	else $arraySearch[] = array('message' => 'Connection Error');

	echo (json_encode($arraySearch));
	$result = null;
?>