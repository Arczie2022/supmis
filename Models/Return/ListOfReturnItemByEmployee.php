<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$result = $db->prepare("SELECT `returnID`, `returnDate`, `supplyName`, `accountName`, `officeName`, `statusDesc`, IF(`tblreissue`.`paredetID` != 0, 'PARE', 'ICS') as `issuance`, `returnRemarks`  FROM `tblreturn` INNER JOIN `tblstatus` ON `tblstatus`.`statusNo` = `tblreturn`.`returnIsWork` AND `statusTable` = 'Return Work'   AND `returnID` IN (SELECT MAX(`returnID`) FROM `tblreturn` GROUP BY `reissueID`) INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `campusID` = (SELECT `campusID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblaccount`.`accountID` = :ID ) AND `tblreturn`.`isReturn` = 1"); 
	$result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"]]);
	while($row = $result->fetch()){
		$arrayReturn[] = array("message" => "success", 'ID' => $row["returnID"], 'Date' => $row["returnDate"], 'Supply' => $row["supplyName"], 'Employee' => $row["accountName"], 'Office' => $row["officeName"], 'Status' => $row["statusDesc"], 'Type' => $row["issuance"], 'Remarks' => $row["returnRemarks"]);
	}
	jsEncode($arrayReturn);
	$result = null;
?>