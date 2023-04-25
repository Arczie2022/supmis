<?php
	require '../../Models/Connection/connection_token.php';

	$Year = POST("Year");
	$Status = POST("Status");
	$Office = POST("Office");

	$result = $db->prepare("SELECT `tblreturn`.`reissueID`, `returnDate`, `accountName`, `supplyName`, `supplyCode`, `reissueProperty`, `reissueSerial`, `officeName` FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreturn`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` WHERE YEAR(`returnDate`) = :Year AND `returnIsWork` = :Status AND `tblaccount`.`officeID` = :Office GROUP BY `tblreturn`.`reissueID`");
	$result->execute([":Year" => $Year, ":Status" => $Status, ":Office" => $Office]);
	while($row = $result->fetch()){
		$supply =$row["supplyName"];
		$supplyCode = " (" . $row["supplyCode"] . ")";
		$supply = $supplyCode == " ()" ? $supply : $supply . $supplyCode;
		$arrayReturn[] = array("message" => "success", "reissueID" => $row["reissueID"], "Date" => $row["returnDate"], "Employee" => $row["accountName"], "Office" => $row["officeName"], "Supply" => $supply, "Property" => $row["reissueProperty"], "Serial" => $row["reissueSerial"]);
	}

	jsEncode($arrayReturn);
?>