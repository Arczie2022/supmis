<?php
	require '../../Models/Connection/connection_wo_token.php';

	$code = GET("ID");
	$countMe = 0;

	$result = $db->prepare("SELECT `supplyName`, `supplyCode`, `supplyProperty`, IFNULL(`icsDate`, `pareDateRequest`) as `issueDate`, `reissueDate`, IFNULL(`icsCode`, `pareCode`) as `issueCode`, IF(`campusCode` = 'Main', `officeCode`, `campusCode`) as `office`, `accountName`, `supplyPrice`, `supplyDesc`, `reissueSerial`, `reissueProperty`, 1 as `quantity` FROM `tblreissue` INNER JOIN `tblreissuedet` ON `tblreissuedet`.`reissuedetID` = `tblreissue`.`parentID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblreissuedet`.`descID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` LEFT JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` LEFT JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` LEFT JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` LEFT JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `tblreissue`.`supplyID` = :ID ORDER BY IFNULL(`icsDate`, `pareDateRequest`), `reissueDate`, `reissueProperty`"); 
	$result->execute([":ID"=>$code]);

	while($row = $result->fetch()){
		$supply = $row["supplyCode"];
		$supply = $supply == "" || $supply == null ? "" :  $row["supplyName"] . " (" . $supply . ")";
		$arrayProperty[] = array("Supply" => $supply, "Property" => $row["supplyProperty"], "issueDate" => $row["issueDate"], "reissueDate" => $row["reissueDate"], "IssueCode" => $row["issueCode"], "Office" => $row["office"], "Employee" => $row["accountName"], "Price" => "P ".number_format($row["supplyPrice"],2), "Description" => $row["supplyDesc"], "Serial" => $row["reissueSerial"], "reissueProperty" => $row["reissueProperty"], "quantity" => $row["quantity"]);
		$countMe++;
	}

	EmptyReports("ID", "Reports/Property_Card.php", $arrayProperty);

?>