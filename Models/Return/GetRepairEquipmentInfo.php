<?php
	require '../../Models/Connection/connection_token.php';

	$maxID = POST("maxReturnID");
	$subID = POST("secondMaxReturnID");
	$reissueID = POST("reissueID");
	
	$result = $db->prepare("SELECT  `returnDate` as `repairDate`, `officer`.`accountName` as `officerName`, `employee`.`accountName` as `empName`, `returnRemarks`, IFNULL(`icsDate`, `pareDateRequest`) as `issueDate`, IF(`tblreissue`.`icsdetID` = 0, 'PARE', 'ICS') as `issueType`, IFNULL(`icsCode`, `pareCode`) as `issueCode`, `supplyCode`, `supplyName`, IFNULL(`icsDesc`.`supplyDesc`, `pareDesc`.`supplyDesc`) as `issueRemarks`, `reissueProperty`, `reissueSerial`, IFNULL(`icsChart`.`chartLife`, `pareChart`.`chartLife`) as `chartLife`, (SELECT `returnDate` FROM `tblreturn` WHERE `returnID` = :subID) as `returnedDate` FROM `tblreturn` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblreturn`.`officerID` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreturn`.`reissueID` INNER JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tblreissue`.`employeeID` LEFT JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` LEFT JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` LEFT JOIN `tblsupplydesc` `icsDesc` ON `icsDesc`.`descID` = `tblicsdet`.`descID` LEFT JOIN `tblchartaccount` `icsChart`  ON `icsChart`.`chartID` = `icsDesc`.`chartID_Acc` LEFT JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` LEFT JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` LEFT JOIN `tblsupplydesc` `pareDesc` ON `pareDesc`.`descID` = `tblparedet`.`descID` LEFT JOIN `tblchartaccount` `pareChart`  ON `pareChart`.`chartID` = `pareDesc`.`chartID_Acc` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` WHERE `tblreturn`.`reissueID` = :reissueID AND `tblreturn`.`returnID` = :maxID"); 
	$result->execute([":maxID" => $maxID, ":subID" => $subID, ":reissueID" => $reissueID]);

	while($row = $result->fetch()){
		$arrayRepairInfo[] = array("message" => "success", 'repairDate' => $row["repairDate"], 'officerName' => $row["officerName"], 'empName' => $row["empName"], 'issueDate' => $row["issueDate"], 'issueType' => $row["issueType"], 'issueCode' => $row["issueCode"], 'supplyCode' => $row["supplyCode"], 'supplyName' => $row["supplyName"], 'issueRemarks' => $row["issueRemarks"], 'reissueProperty' => $row["reissueProperty"], 'reissueSerial' => $row["reissueSerial"], 'chartLife' => $row["chartLife"], 'returnedDate' => $row["returnedDate"], 'returnRemarks' => $row["returnRemarks"]);
	}

	jsEncode($arrayRepairInfo);
	$result = null;
?>