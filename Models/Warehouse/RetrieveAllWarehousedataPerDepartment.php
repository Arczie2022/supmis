<?php
	require '../../Models/Connection/connection_token.php';
	session_start();
	$result = $db->prepare("SELECT `tblreissue`.`supplyID`, `icsdetID`, `paredetID`, `supplyCode`, `supplyName`, `reissueSerial`, `reissueProperty`, `tblreissue`.`employeeID` , `accountName`, `parentID`, `tblwarehousedet`.`warehousedetID`, `returnID`, `tblwarehousedet`.`DateCreated` as `warehouseDate`, `chartLife` FROM `tblreissue` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblreissuedet` ON `tblreissue`.`parentID` = `tblreissuedet`.`reissuedetID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblreissuedet`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` INNER JOIN `tblwarehousedet` ON `tblwarehousedet`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblwarehousedet`.`OfficerID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `reissueStatus` = 3 AND `warehouseStatus` = 1 AND `warehouseID` = (SELECT `warehouseID` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `tblaccount`.`accountID` = :ID)"); 
	$result->execute([":ID" => $_SESSION["SUPMIS"]["supmis_ID"]]);

	while($row = $result->fetch()){
		$params = array('reissueSerial' => $row["reissueSerial"], 'icsdetID' => $row["icsdetID"], 'paredetID' => $row["paredetID"], 'supplyID' => $row["supplyID"], 'parentID' => $row["parentID"]);
		$resultInside = $db->prepare("SET @serial = :reissueSerial, @icsdet = :icsdetID, @paredet = :paredetID, @parent = :parentID, @supply = :supplyID");
		$resultInside->execute($params);
		
		$resultInside = $db->prepare("SELECT `tblreissue`.`reissueID`, `reissueDate`, `tblreissue`.`employeeID`, `accountName`, IFNULL(`pareCode`, `icsCode`) as `issuanceCode`, IFNULL(`pareDesc`.`supplyDesc`, `icsDesc`.`supplyDesc`) as `equipmentDesc` FROM `tblreissue` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` LEFT JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` LEFT JOIN `tblsupplydesc` `icsDesc` ON `icsDesc`.`descID` = `tblicsdet`.`descID` LEFT JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` LEFT JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` LEFT JOIN `tblsupplydesc` `pareDesc` ON `pareDesc`.`descID` = `tblparedet`.`descID` LEFT JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` WHERE `parentID` = @parent AND `reissueSerial` = @serial AND `tblreissue`.`icsdetID` = @icsdet AND `tblreissue`.`paredetID` = @paredet AND `tblreissue`.`supplyID` = @supply AND `tblreissue`.`DateCreated` = (SELECT MAX(`DateCreated`) FROM `tblreissue` WHERE `parentID` = @parent AND `reissueSerial` = @serial AND `icsdetID` = @icsdet AND `paredetID` = @paredet AND `supplyID` = @supply  AND `reissueDate` = (SELECT MAX(`reissueDate`) FROM `tblreissue` WHERE `parentID` = @parent AND `reissueSerial` = @serial AND `icsdetID` = @icsdet AND `paredetID` = @paredet AND `supplyID` = @supply ))"); 
		$resultInside->execute();
		$rowLast = $resultInside->fetch();
		
		$resultInside = $db->prepare("SELECT `reissueDate` FROM `tblreissue` WHERE `parentID` = @parent AND `reissueSerial` = @serial AND `tblreissue`.`supplyID` = @supply AND `tblreissue`.`DateCreated` = (SELECT MIN(`DateCreated`) FROM `tblreissue` WHERE `parentID` = @parent AND `reissueSerial` = @serial  AND `supplyID` = @supply  AND `reissueDate` = (SELECT MIN(`reissueDate`) FROM `tblreissue` WHERE `parentID` = @parent AND `reissueSerial` = @serial AND `supplyID` = @supply))"); 
		$resultInside->execute();
		$rowFirst = $resultInside->fetch();
		$arrayWarehouseData[] = array(
			"message" => "success",
			'warehousedetID' => $row["warehousedetID"], 
			'supplyID' => $row["supplyID"], 
			'returnID' => $row["returnID"], 
			'supplyCode' => $row["supplyCode"], 
			'supplyName' => $row["supplyName"], 
			'icsdetID' => $row["icsdetID"], 
			'paredetID' => $row["paredetID"], 
			'Serial' => $row["reissueSerial"], 
			'Property' => $row["reissueProperty"], 
			'Life' => $row["chartLife"], 
			'supplyOfficerID' => $row["employeeID"], 
			'SupplyOfficer' => $row["accountName"], 
			'parentID' => $row["parentID"],  
			'warehouseDate' => explode(" ", $row["warehouseDate"])[0], 
			'issuanceCode' => $rowLast["issuanceCode"], 
			'Remarks' => $rowLast["equipmentDesc"], 
			'reissueID' => $rowLast["reissueID"], 
			'lastIssuedDate' => $rowLast["reissueDate"], 
			'lastEmployeeID' => $rowLast["employeeID"], 
			'lastEmployee' => $rowLast["accountName"], 
			'firstIssuedDate' => $rowFirst["reissueDate"]
		);
	}
	jsEncode($arrayWarehouseData);
	$result = null;
	$resultInside = null;
?>