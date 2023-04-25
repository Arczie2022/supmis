<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$result = $db->prepare("SELECT `returnID`, `tblreturn`.`reissueID`, `returnDate`, `supplyName`, `accountName`, `officeName`, `statusDesc`, IF(`tblreissue`.`paredetID` != 0, 'PARE', 'ICS') as `issuance` FROM `tblreturn` INNER JOIN `tblstatus` ON `tblstatus`.`statusNo` = `tblreturn`.`returnIsWork` AND `statusTable` = 'Return Work'   AND `returnID` IN (SELECT MAX(`returnID`) FROM `tblreturn` GROUP BY `reissueID`) INNER JOIN `tblreissue` ON `tblreturn`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `campusID` = (SELECT `campusID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblaccount`.`accountID` = :ID ) AND `tblreturn`.`isReturn` = 7"); 
	$result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"]]);
	while($row = $result->fetch()){
		$resultDate = $db->prepare("SELECT `returnID`, `returnDate` FROM `tblreturn` WHERE `returnID` = (SELECT MAX(`returnID`) FROM `tblreturn` WHERE `reissueID` = :ID_1 AND NOT `returnID` IN (SELECT MAX(`returnID`) FROM `tblreturn` WHERE `reissueID` = :ID_2))");
		$resultDate->execute([":ID_1" => $row["reissueID"], ":ID_2" => $row["reissueID"]]);
		$rowDate = $resultDate->fetch();

		$arrayRepair[] = array("message" => "success", 'maxID' => $row["returnID"], 'secondMaxID' => $rowDate["returnID"], 'reissueID' => $row["reissueID"], 'repairDate' => $row["returnDate"], 'returnDate' => $rowDate["returnDate"], 'Supply' => $row["supplyName"], 'Employee' => $row["accountName"], 'Office' => $row["officeName"], 'Status' => $row["statusDesc"], 'Type' => $row["issuance"]);
	}
	jsEncode($arrayRepair);
	$result = null;
	$resultDate = null;
?>