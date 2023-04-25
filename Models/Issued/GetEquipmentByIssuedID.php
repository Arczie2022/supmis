<?php
	require '../../Models/Connection/connection_token.php';

	$query = "";

	switch (POST("Type")) {
		case '1':
			$query = "SELECT `supplyName`, `tblrisdet`.`supplyID`, SUM(`risQuantity`) as `Quantity`, `accountName` as `IssuedTo`, `accountName` as `ReIssuedTo`, `descID`  FROM `tblrisdet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblrisdet`.`supplyID` INNER JOIN `tblris` ON `tblris`.`risID` = `tblrisdet`.`risID` INNER JOIN `tblsupplyused` ON `tblsupplyused`.`risID` = `tblris`.`risID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblris`.`employeeID` WHERE `tblrisdet`.`risID` = :ID GROUP BY `descID`"; 
			break;
		case '2':
			$query = "SELECT `supplyName`, `tblicsdet`.`supplyID`, IFNULL(COUNT(`tblicsdet`.`supplyID`), 1) as `Quantity`, `icsAccount`.`accountName` as `IssuedTo`, `reIssueAccount`.`accountName` as `ReIssuedTo`, `descID`  FROM `tblicsdet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblaccount` `icsAccount` ON `icsAccount`.`accountID` = `tblics`.`officerIDTo` LEFT JOIN `tblreissue` ON `tblreissue`.`icsdetID` = `tblicsdet`.`icsdetID` LEFT JOIN `tblaccount` `reIssueAccount` ON `reIssueAccount`.`accountID` = `tblreissue`.`employeeID` WHERE `tblicsdet`.`icsID` = :ID GROUP BY  `tblicsdet`.`supplyID`, `tblicsdet`.`icsID`"; 
			break;
		case '3':
			$query = "SELECT `supplyName`, `tblparedet`.`supplyID`, IFNULL(COUNT(`tblparedet`.`supplyID`), 1) as `Quantity`, `pareAccount`.`accountName` as `IssuedTo`, `reIssueAccount`.`accountName` as `ReIssuedTo`, `descID`  FROM `tblparedet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblaccount` `pareAccount` ON `pareAccount`.`accountID` = `tblpare`.`officerIDTo` LEFT JOIN `tblreissue` ON `tblreissue`.`paredetID` = `tblparedet`.`paredetID` LEFT JOIN `tblaccount` `reIssueAccount` ON `reIssueAccount`.`accountID` = `tblreissue`.`employeeID` WHERE `tblparedet`.`pareID` = :ID GROUP BY  `tblparedet`.`supplyID`, `tblparedet`.`pareID`"; 
			break;
		default:
			$query = "";
			break;
	}

	if($query != ""){
		$result = $db->prepare($query);
		$result->execute([":ID"=>POST("ID")]);
		while($row = $result->fetch()){
			$arrayIssuanceInfo[] = array('message' => 'success', 'supplyName' => $row["supplyName"], 'supplyID' => $row["supplyID"], 'descID' => $row["descID"], 'Quantity' => $row["Quantity"], 'IssuedTo' => $row["IssuedTo"], 'ReIssuedTo' => $row["ReIssuedTo"]);
		}
		if (empty($arrayIssuanceInfo) && POST("Type") == "1"){
			$result = $db->prepare("SELECT `supplyName`, `tblrisdet`.`supplyID`, SUM(`risQuantity`) as `Quantity`, `accountName` as `IssuedTo`, `accountName` as `ReIssuedTo`, `descID`  FROM `tblrisdet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblrisdet`.`supplyID` INNER JOIN `tblris` ON `tblris`.`risID` = `tblrisdet`.`risID` INNER JOIN `tblstockroom` ON `tblstockroom`.`srID` = `tblrisdet`.`stockID` INNER JOIN `tblstock` ON `tblstock`.`stockID` = `tblstockroom`.`stockID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblris`.`employeeID` WHERE `tblrisdet`.`risID` = :ID GROUP BY `descID`"); 
			$result->execute([":ID"=>POST("ID")]);
			while($row = $result->fetch()){
				$arrayIssuanceInfo[] = array('message' => 'success', 'supplyName' => $row["supplyName"], 'supplyID' => $row["supplyID"], 'descID' => $row["descID"], 'Quantity' => $row["Quantity"], 'IssuedTo' => $row["IssuedTo"], 'ReIssuedTo' => $row["ReIssuedTo"]);
			}
		}
	}
	else $arrayIssuanceInfo[] = array('message' => 'Connection Error');


	echo (json_encode($arrayIssuanceInfo));
	$result = null;

?>