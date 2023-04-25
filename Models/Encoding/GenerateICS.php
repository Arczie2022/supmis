<?php
	require_once '../../Models/Connection/connection_token.php';

	session_start();

	$DateApproved = POST("DateApproved");
	$ICSCode = POST("ICSCode");
	$RIS = POST("RIS");
	$PONo = POST("PONo");
	$Fund = POST("Fund");
	$Supplier = POST("Supplier");
	$Officer = POST("Officer");
	$Employee = POST("Employee");
	$Encoder = $_SESSION["SUPMIS"]["supmis_ID"];

	$ICS = $_POST["ICS"];

    $dateArr = explode("-", $DateApproved);

    $year = $dateArr[0];
    $month = $dateArr[1];

	try{
	    $db->beginTransaction();

	    $TempEmployee = 0;
	    $ICSID = 0;

	    for ($loop = 0; $loop < count($ICS); $loop++) { 
	    	$Equipment = POST($ICS[$loop]["Equipment"], false);
	    	$EquipmentName = POST($ICS[$loop]["EquipmentName"], false);
	    	$Serial = POST($ICS[$loop]["Serial"], false);
	    	$descID = POST($ICS[$loop]["ID"], false);

	    	if($Employee != $TempEmployee){
	    		
	    		$result = $db->prepare("INSERT INTO `tblrisppe`(`risppeCode`, `risppePONo`, `risppeDate`, `employeeID`, `officerID`, `no`, `risppeStatus`) VALUES (:Code, :PONo, :DateRequest, :Employee, :Officer, :Encoder, 1);");
				$result->execute([":Code" => $RIS, ":PONo" => $PONo, ":DateRequest" => $DateApproved, ":Employee" => $Employee, ":Officer" => $Officer, ":Encoder" => $Encoder]);

				$RISPPEID = $db->lastInsertId();

				if($result->rowCount() == 0 || $result->rowCount() == "0")
					throw new Exception('Duplicate Entry of RIS-ICS');

	    		$params = array(":Code" => $ICSCode, ":PONo" => $PONo, ":OfficerFrom" => $Officer, ":OfficerTo" => $Officer, ":DateRequest" => $DateApproved, ":Supplier" => $Supplier, ":Fund" => $Fund, ":Encoder" => $Encoder); 
	    		$result = $db->prepare("INSERT INTO `tblics`(`icsCode`, `icsPO`, `officerIDFrom`, `officerIDTo`, `icsDate`, `supplierID`, `fundID`, `no`) VALUES (:Code, :PONo, :OfficerFrom, :OfficerTo, :DateRequest, :Supplier, :Fund, :Encoder);");
	    		$result->execute($params);

        		$ICSID = $db->lastInsertId();

        		if($result->rowCount() == 0 || $result->rowCount() == "0")
        			throw new Exception('Insert ICS Error');

        		$TempEmployee = $Employee;

        		$result = $db->prepare("SELECT (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :Employee) as `employee`, (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :Officer) as `officer`");
        		$result->execute([":Employee" => $Employee, ":Officer" => $Officer]);
        		$row = $result->fetch();
        		$LogEmp = $row["employee"];
        		$LogOff = $row["officer"];

        		$LogRemarks = $LogOff. " has been issued ICS (".$ICSCode .") to " . $LogEmp;
        		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $Employee, ':ViewAccess' => '1,2,3,4,5,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
        		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 5, 0, :ViewAccess, :Encoder);");
        		$result->execute($params);
        		if($result->rowCount() == 0 || $result->rowCount() == "0")
        			throw new Exception('Log Error');

        		$arrayGenerate[] = array('message' => 'success', "ID" => $ICSCode);
	    	}

	    	$result = $db->prepare("SELECT `stockID` FROM `tblstock` WHERE `descID` = :ID");
	    	$result->execute([":ID" => $descID]);
	    	$row = $result->fetch();
	    	$StockID = $row["stockID"];
	    	
	    	$result = $db->prepare("UPDATE `tblstock` SET `stockBalance` =  IF(`stockBalance` < 1, 0, `stockBalance` - 1) WHERE `stockID` = :ID");
            $result->execute([':ID' => $StockID]);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('No Stock Available');

        	$params = array(":PONo" => $PONo, ":Supply" => $Equipment, ":descID" => $descID, ":RIS" => $RISPPEID, ":ICS" => $ICSID, ":Encoder" => $Encoder); 
        	$result = $db->prepare("INSERT INTO `tblsupplyused`(`poID`, `supplyID`, `descID`, `usedQuantity`, `risppeID`, `icsID`, `issuanceNew`, `no`) VALUES (:PONo, :Supply, :descID, 1, :RIS, :ICS, 0, :Encoder)");
            $result->execute($params);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Insert Error SupplyUsed');

			$result = $db->prepare("INSERT INTO `tblrisppedet`(`risppeID`, `stockID`, `risppedetQuantity`, `no`) VALUES (:ID, :Stock, 1, :no);");
			$result->execute([":ID" => $RISPPEID, ":Stock" => $StockID, ":no" => $Encoder]);

			$RISPPEDETID = $db->lastInsertId();

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Error RISPPEDET');

			$params = array(":ICS" => $ICSID, ":Supply" => $Equipment, ":descID" => $descID, ":RIS" => $RISPPEDETID, ":SerialKey" => $Serial, ":Encoder" => $Encoder); 
			$result = $db->prepare("INSERT INTO `tblicsdet`(`icsID`, `supplyID`, `descID`, `risppedetID`, `icsSerial`, `icsNew`, `no`) VALUES (:ICS, :Supply, :descID, :RIS, :SerialKey, 0, :Encoder)");
	    	$result->execute($params);
	    
	    	$ICSDETID = $db->lastInsertId();

	    	if($result->rowCount() == 0 || $result->rowCount() == "0")
	    		throw new Exception('Insert Error ICSDET');

	    	$result = $db->prepare("SELECT `chartLegend` FROM `tblsupplydesc` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `descID` = :ID"); 
	    	$result->execute([":ID" => $descID]);
	    	$row = $result->fetch();
	    	$legend = $row["chartLegend"];

	    	$result = $db->prepare("SELECT `accountUsername` FROM `tblaccount` WHERE `accountID` = :ID");
	    	$result->execute([":ID" => $Employee]);
	    	$row = $result->fetch();
	    	$EmployeeCode = $row["accountUsername"];

	        $code = "CNSC-". $legend."-".$EmployeeCode."-";
	        $search = "CNSC-". $legend."-%";

	        $params = array(":Officer"=> $Officer, ":DateRequest"=> $DateApproved, ":Employee"=> $Employee, ":ICSDETID"=> $ICSDETID, ":SerialKey"=> $Serial, ":no"=> $Encoder, ":Supply" => $Equipment, ":code" => $code, ":search" => $search);
			$result = $db->prepare("INSERT INTO `tblreissue`(`reissueProperty`, `officerID`, `reissueDate`, `employeeID`, `icsdetID`, `paredetID`, `supplyID`, `reissueSerial`, `no`) (SELECT CONCAT(:code, LPAD((SELECT COUNT(*)+1 FROM (SELECT COUNT(`reissueProperty`)  FROM `tblreissue` WHERE `reissueProperty` LIKE :search GROUP BY `reissueProperty`) as `table`), 5, '0')) as `code`, :Officer, :DateRequest, :Employee, :ICSDETID, 0, :Supply, :SerialKey, :no)");
			$result->execute($params);

	    	$reissueID = $db->lastInsertId();

	    	if($result->rowCount() == 0 || $result->rowCount() == "0")
	    		throw new Exception('Insert Error ReIssue');

            $result = $db->prepare("INSERT INTO `tblreissuedet`(`reissueID`, `descID`, `no`) VALUES (:reissueID, :descID, :no);");
            $result->execute([":reissueID" => $reissueID, ":no" => $Encoder, ":descID" => $descID]);

            $reissuedetID = $db->lastInsertId();

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Insert Error ReIssueDet');

           	$result = $db->prepare("UPDATE `tblreissue` SET `parentID` = :reissuedetID WHERE `reissueID` = :reissueID");
            $result->execute([":reissueID" => $reissueID, ":reissuedetID" => $reissuedetID]);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Update Error Reissue');
    	}
	
	    $db->commit();
	}
	catch(Exception $e){
	    $arrayGenerate = [];
	    if ($e->getMessage() == "No Stock Available"){
	        $arrayGenerate[] = array('message' => 'No Stock Available', "supply" => $EquipmentName);
	    }else{
	        $arrayGenerate[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
	    }
	    $db->rollBack();
	}

	echo (json_encode($arrayGenerate));	
?>