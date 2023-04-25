<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$result = $db->prepare("SELECT `supplyName`, `supplyCode`, `icsDate` as `Date`, `icsCode` as `code`, `reissueSerial`, `reissueProperty`, `chartLife`, `supplyDesc` as `remarks`, `supplyPrice` as `Price` FROM `tblreissue` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` INNER JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` LEFT JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `tblreissue`.`reissueID` = :ID_ICS AND `employeeID` = :Employee_ICS UNION ALL SELECT `supplyName`, `supplyCode`, `pareDateRequest` as `Date`, `pareCode` as `code`, `reissueSerial`, `reissueProperty`, `chartLife`, `supplyDesc` as `remarks`, `supplyPrice` as `Price` FROM `tblreissue` INNER JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` INNER JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` LEFT JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `tblreissue`.`reissueID` = :ID_PARE AND `employeeID` = :Employee_PARE"); 
	$result->execute([":ID_ICS"=>POST("ID"),":ID_PARE"=>POST("ID"), ":Employee_ICS"=>$_SESSION["SUPMIS"]["supmis_ID"],":Employee_PARE"=>$_SESSION["SUPMIS"]["supmis_ID"]]);
	if($row = $result->fetch())
		$arraySupplyInfo[] = array('message' => 'success', 'Supply' => $row["supplyName"], 'Code' => $row["supplyCode"], 'Life' => $row["chartLife"], 'IssuedDate' => $row["Date"], 'Issuance' => $row["code"], 'Serial' => $row["reissueSerial"], 'Property' => $row["reissueProperty"], 'Remarks' => $row["remarks"], 'Price' => $row["Price"]);
	else
		$arraySupplyInfo[] = array('message' => 'Connection Error');

	echo (json_encode($arraySupplyInfo));
?>