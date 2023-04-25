<?php
	require_once '../../Models/Connection/connection_token.php';

	session_start();

	$reissue = POST("reissue");
	$icsDet = POST("icsDet");
	$paredet = POST("paredet");
	$return = POST("return");
	$warehousedet = POST("warehousedet");
	$employee = POST("ReissueEmployee");
	$employeeCode = POST("employeeCode");

	$Officer = $_SESSION["SUPMIS"]["supmis_ID"];

    $dateRequest =  date("Y-m-d");
    $dateArr = explode("-", $dateRequest);

	try{
	    $db->beginTransaction();
	    
	    if ($icsDet != 0 || $icsDet != "0"){

    		$params = array(":ID"=> $icsDet, ":OfficerFrom"=> $Officer, ":OfficerTo"=> $Officer, ":dateRequest"=> $dateRequest, ":no"=> $Officer, ":str"=>"ICS-".$dateArr[0].$dateArr[1]."-", ":yr"=>"%-".$dateArr[0]."%");
    		$result = $db->prepare("INSERT INTO `tblics`(`icsCode`, `icsPO`, `officerIDFrom`, `officerIDTo`, `icsDate`, `supplierID`, `fundID`, `no`) (SELECT (SELECT CONCAT(:str, LPAD((SELECT COUNT(*) FROM (SELECT COUNT(`icsCode`) as `code`  FROM `tblics` WHERE `icsCode` LIKE :yr GROUP BY `icsCode`) as `tbl`)+1, 5, '0')))  as `code`, `icsPO`, :OfficerFrom, :OfficerTo, :dateRequest, `supplierID`, `fundID`, :no FROM `tblics` WHERE `icsID` = (SELECT `icsID` FROM `tblicsdet` WHERE `icsdetID` =:ID))");
    		$result->execute($params);

	    	if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Failed in ics');

    		$icsID = $db->lastInsertId();

    		$result = $db->prepare("SELECT `icsCode` FROM `tblics` WHERE `icsID` = :ID");
	        $result->execute([":ID"=>$icsID]);
	        $row = $result->fetch();

	        $codeICS = $row["icsCode"];

	    	$params = array(':icsID' => $icsID, ':no' => $Officer, ':ID' => $icsDet);
	    	$result = $db->prepare("INSERT INTO `tblicsdet`(`icsID`, `supplyID`, `icsSerial`, `descID`, `no`) (SELECT :icsID, `supplyID`, `icsSerial`, `descID`, :no FROM `tblicsdet` WHERE `icsdetID` = :ID)"); 
	    	$result->execute($params);
	    	if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Failed in icsdet');

    		$icsDet = $db->lastInsertId();

			$result = $db->prepare("UPDATE `tblreissue` SET `reissueStatus` =  5 WHERE  `reissueID` = :ID");
			$result->execute([":ID" => $reissue]);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Update Failed in Reissue');

			$result = $db->prepare("SELECT `tblicsdet`.`supplyID`, `chartLegend` FROM `tblicsdet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `icsdetID` = :ID");
			$result->execute([":ID" => $icsDet]);
			$row = $result->fetch();
	        $legend = $row["chartLegend"];

	        $propertyCode = "CNSC-". $legend."-".$employeeCode."-";
	        $propertySearch = "CNSC-". $legend."-%";
			

			$params = array(':Officer' => $Officer, ':dateRequest' => $dateRequest, ':employee' => $employee, ':icsdet' => $icsDet, ':paredet' => $paredet, ':propertycode' => $propertyCode, ':propertySearch' => $propertySearch, ':no' => $Officer, ':ID' => $reissue);
			$result = $db->prepare("INSERT INTO `tblreissue`(`officerID`, `reissueDate`, `employeeID`, `icsdetID`, `paredetID`, `supplyID`, `reissueProperty`, `reissueSerial`, `reissueStatus`, `parentID`, `no`) (SELECT :Officer, :dateRequest, :employee, :icsdet, :paredet, `supplyID`, (SELECT CONCAT(:propertycode, LPAD((SELECT COUNT(*)+1 FROM (SELECT COUNT(`reissueProperty`)  FROM `tblreissue` WHERE `reissueProperty` LIKE :propertySearch GROUP BY `reissueProperty`) as `table`), 5, '0'))) as `code`, `reissueSerial`, 0, `parentID`, :no FROM `tblreissue` WHERE `reissueID` = :ID)");
			$result->execute($params);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Failed in Reissue');

			$result = $db->prepare("UPDATE `tblwarehousedet` SET `warehouseStatus` = 0, `No` = :no WHERE `warehousedetID` = :ID");
			$result->execute([":no" => $Officer, ":ID" => $warehousedet]);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Update Failed in Warehouse');

    		$arrayReissueOther[] = array('message' => 'success', "ID" => $codeICS);
	    }

	    if ($paredet != 0 || $paredet != "0"){

    		$params = array(":ID"=> $paredet, ":OfficerFrom"=> $Officer, ":OfficerTo"=> $Officer, ":dateRequest"=> $dateRequest, ":no"=> $Officer, ":str"=>"PARE-".$dateArr[0].$dateArr[1]."-", ":yr"=>"%-".$dateArr[0]."%");
    		$result = $db->prepare("INSERT INTO `tblpare`(`pareCode`, `parePO`, `officerIDFrom`, `officerIDTo`, `pareDateRequest`, `supplierID`, `fundID`, `no`) (SELECT (SELECT CONCAT(:str, LPAD((SELECT COUNT(*) FROM (SELECT COUNT(`pareCode`) as `code`  FROM `tblpare` WHERE `pareCode` LIKE :yr GROUP BY `pareCode`) as `tbl`)+1, 5, '0')))  as `code`, `parePO`, :OfficerFrom, :OfficerTo, :dateRequest, `supplierID`, `fundID`, :no FROM `tblpare` WHERE `pareID` = (SELECT `pareID` FROM `tblparedet` WHERE `paredetID` = :ID))");
    		$result->execute($params);

    		if($result->rowCount() == 0 || $result->rowCount() == "0")
    			throw new Exception('Insert Failed in Pare');

    		$pareID = $db->lastInsertId();

    		$result = $db->prepare("SELECT `pareCode` FROM `tblpare` WHERE `pareID` = :ID");
	        $result->execute([":ID"=>$pareID]);
	        $row = $result->fetch();
	        $pareCode = $row["pareCode"];
	    	$params = array(':pareID' => $pareID, ':no' => $Officer, ':ID' => $paredet);
	    	$result = $db->prepare("INSERT INTO `tblparedet`(`pareID`, `supplyID`, `descID`, `pareSerial`, `no`) (SELECT :pareID, `supplyID`, `descID`, `pareSerial`, :no FROM `tblparedet` WHERE `paredetID` = :ID)");
	    	$result->execute($params);

	    	if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Failed in paredet');

    		$paredet = $db->lastInsertId();

			$result = $db->prepare("UPDATE `tblreissue` SET `reissueStatus` =  5 WHERE  `reissueID` = :ID");
			$result->execute([":ID" => $reissue]);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Update Failed in Reissue');

			$result = $db->prepare("SELECT `tblparedet`.`supplyID`, `chartLegend` FROM `tblparedet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `paredetID` = :ID");
			$result->execute([":ID" => $paredet]);
			$row = $result->fetch();
	        $legend = $row["chartLegend"];

	        $propertyCode = "CNSC-". $legend."-".$employeeCode."-";
	        $propertySearch = "CNSC-". $legend."-%";
			

			$params = array(':Officer' => $Officer, ':dateRequest' => $dateRequest, ':employee' => $employee, ':icsdet' => $icsDet, ':paredet' => $paredet, ':propertycode' => $propertyCode, ':propertySearch' => $propertySearch, ':no' => $Officer, ':ID' => $reissue);
			$result = $db->prepare("INSERT INTO `tblreissue`(`officerID`, `reissueDate`, `employeeID`, `icsdetID`, `paredetID`, `supplyID`, `reissueProperty`, `reissueSerial`, `reissueStatus`, `parentID`, `no`) (SELECT :Officer, :dateRequest, :employee, :icsdet, :paredet, `supplyID`, (SELECT CONCAT(:propertycode, LPAD((SELECT COUNT(*)+1 FROM (SELECT COUNT(`reissueProperty`)  FROM `tblreissue` WHERE `reissueProperty` LIKE :propertySearch GROUP BY `reissueProperty`) as `table`), 5, '0'))) as `code`, `reissueSerial`, 0, `parentID`, :no FROM `tblreissue` WHERE `reissueID` = :ID)");
			$result->execute($params);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Failed in Reissue');

			$result = $db->prepare("UPDATE `tblwarehousedet` SET `warehouseStatus` = 0, `No` = :no WHERE `warehousedetID` = :ID");
			$result->execute([":no" => $Officer, ":ID" => $warehousedet]);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Update Failed in Warehouse');

    		$arrayReissueOther[] = array('message' => 'success', "ID" => $pareCode);
    	}


	    $result = $db->prepare("SELECT `employeeID`, `accountName`, `supplyName`, `reissueProperty`, (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :Emp) as `reissueEmp` FROM `tblreturn` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreturn`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tblsupply` ON `tblreissue`.`supplyID` = `tblsupply`.`supplyID` WHERE `tblreturn`.`returnID` = :ID");
		$result->execute([":ID" => $return, ":Emp" => $employee]);
		$row = $result->fetch();
		$LogsEmpID = $row["employeeID"];
		$LogsEmpName = $row["accountName"];
		$LogsSupply = $row["supplyName"];
		$LogsProperty = $row["reissueProperty"];
		$LogsReissue = $row["reissueEmp"];

		$LogRemarks = $LogsSupply . " of the Mr/Ms. " . $LogsEmpName . " (". $LogsProperty .") has been reissued to Mr/Ms. " . $LogsReissue;
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $employee, ':ViewAccess' => '1,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 6, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');
	
	    $db->commit();
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayReissueOther = [];
        $arrayReissueOther[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
	}

	echo (json_encode($arrayReissueOther));	
?>