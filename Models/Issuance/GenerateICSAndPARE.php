<?php
	require_once '../../Models/Connection/connection_token.php';
	session_start();

	$PONo = POST("PONo");
	$Supplier = POST("Supplier");
	$Fund = POST("Fund");
	$RISPPE = POST("RISPPE");
	$Officer = $_SESSION["SUPMIS"]["supmis_ID"];

	$ICS = $_POST["ICS"];
	$PARE = $_POST["PARE"];

    $dateRequest =  date("Y-m-d");
    $dateArr = explode("-", $dateRequest);

    $supplyName = "";
	try{
	    $db->beginTransaction();
	    
	    $Employee = 0;
	    $icsID = 0; 
	    if ($ICS != null)
	    for ($loop = 0; $loop < count($ICS); $loop++) { 
	    	if($Employee != $ICS[$loop]["Employee"]){
	    		$Employee = POST($ICS[$loop]["Employee"], false);
	    		
	    		$params = array(":PONo"=> $PONo, ":Officer"=> $Officer, ":Employee"=> $Employee, ":dateRequest"=> $dateRequest, ":Supplier"=> $Supplier, ":Fund"=> $Fund, ":No"=> $Officer, ":str"=>"ICS-".$dateArr[0].$dateArr[1]."-",":yr"=>"%-".$dateArr[0].$dateArr[1]."%");
	    		$result = $db->prepare("INSERT INTO `tblics`(`icsCode`, `icsPO`, `officerIDFrom`, `officerIDTo`, `icsDate`, `supplierID`, `fundID`, `no`) SELECT CONCAT(:str, LPAD((SELECT COUNT(*) FROM (SELECT COUNT(`icsCode`) as `code`  FROM `tblics` WHERE `icsCode` LIKE :yr GROUP BY `icsCode`) as `tbl`)+1, 5, '0')) as `code`, :PONo, :Officer, :Employee, :dateRequest, :Supplier, :Fund, :No");
	    		$result->execute($params);

        		$icsID = $db->lastInsertId();

        		if($result->rowCount() == 0 || $result->rowCount() == "0")
        			throw new Exception('Error Insert ICS');

        		$result = $db->prepare("SELECT `icsCode` FROM `tblics` WHERE `icsID` = :ID");
		        $result->execute([":ID"=>$icsID]);
		        $row = $result->fetch();
		        $icsCode = $row["icsCode"];

		        $result = $db->prepare("UPDATE `tblrisppe` SET `risppeStatus` = 1, `officerID` = :officer WHERE `risppeID` = :ID");
		        $result->execute([":ID" => $RISPPE, ":officer" => $Officer]);
		        if($result->rowCount() == 0 || $result->rowCount() == "0")
		        	throw new Exception('Update Supply Officer Error');

		        $result = $db->prepare("SELECT `emp`.`accountID`, `emp`.`accountName` as `employee`, `off`.`accountName` as `officer`, IF(`tblcampus`.`campusID` = 1, CONCAT(`campusCode`, ' Campus'), `campusCode`) as `campus` FROM `tblrisppe` INNER JOIN `tblaccount` `emp` ON `emp`.`accountID` = `tblrisppe`.`employeeID` INNER JOIN `tblaccount` `off` ON `off`.`accountID` = `tblrisppe`.`officerID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `off`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `risppeID` = :ID");
		        $result->execute([":ID" => $RISPPE]);
		        $row = $result->fetch();
		        $employeeID_ForLogs = $row["accountID"];
		        $employeeName = $row["employee"];
		        $officerName = $row["officer"];
		        $campusName = $row["campus"];

		        $result = $db->prepare("SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :ID");
		        $result->execute([":ID" => $Employee]);
		        $row = $result->fetch();
		        $coordinatorName = $row["accountName"];

		        $LogRemarks = $officerName." issued the ICS (". $icsCode . ") of " . $employeeName . " to " . $coordinatorName.", the Supply Coordinator of the " . $campusName;
		        $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $employeeID_ForLogs, ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		        $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 5, 0, :ViewAccess, :Encoder);");
		        $result->execute($params);
		        if($result->rowCount() == 0 || $result->rowCount() == "0")
		        	throw new Exception('Log Error');

        		$arrayGenerate[] = array('message' => 'success', "ID" => $icsCode);
	    	}

	    	$supplyID = POST($ICS[$loop]["Equipment"],false);
	    	$Stock = POST($ICS[$loop]["Stock"],false);
	    	$serialKey = POST($ICS[$loop]["Serial"],false);
            $descID = POST($ICS[$loop]["descID"],false);
            $risppedet = POST($ICS[$loop]["risppedetID"], false);

	    	$params = array(":icsID"=> $icsID, ":supplyID"=> $supplyID, ":serialKey"=> $serialKey, ":no"=> $Officer, ":descID" => $descID, ":risppe" => $risppedet);
	    	$result = $db->prepare("INSERT INTO `tblicsdet`(`icsID`, `supplyID`, `descID`, `risppedetID`, `icsSerial`, `no`) VALUES (:icsID, :supplyID, :descID, :risppe, :serialKey, :no)"); 
	    	$result->execute($params);

	    	if($result->rowCount() == 0 || $result->rowCount() == "0"){
				$supplyName = POST($ICS[$loop]["EquipmentName"],false);
				throw new Exception('No Stock Available');
	    	}

	    	$result = $db->prepare("UPDATE `tblstock` SET `stockBalance` =  IF(`stockBalance` < 1, 0, `stockBalance` - 1) WHERE `stockID` = :Stock"); 
            $result->execute([':Stock' => $Stock]);
          
            if($result->rowCount() == 0 || $result->rowCount() == "0"){
                $supplyName = POST($ICS[$loop]["EquipmentName"],false);
                throw new Exception('No Stock Available');
            }

            $result = $db->prepare("SELECT `supplyID`, `descID`, `poID` FROM `tblstock` WHERE `stockID` = :ID");
            $result->execute([":ID" => $Stock]);
            $row = $result->fetch();

            $params = array(':POID' => $row["poID"], ':Supply' => $row["supplyID"], ':descID' => $row["descID"], ':risppeID' => $RISPPE, ':ics' => $icsID, ':no' => $Employee);
            $result = $db->prepare("INSERT INTO `tblsupplyused`(`poID`, `supplyID`, `descID`, `usedQuantity`, `risppeID`, `icsID`, `no`) VALUES (:POID, :Supply, :descID, 1, :risppeID, :ics, :no)");
            $result->execute($params);
            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Insert Supply Used Error');

	    }

	    $Employee = 0;
	    $pareID = 0;

	    if ($PARE != null)
	    for ($loop = 0; $loop < count($PARE); $loop++) { 
	    	if($Employee != $PARE[$loop]["Employee"]){

	    		$Employee = POST($PARE[$loop]["Employee"], false);
	    		
	    		$params = array(":PONo"=> $PONo, ":Officer"=> $Officer, ":Employee"=> $Employee, ":dateRequest"=> $dateRequest, ":Supplier"=> $Supplier, ":Fund"=> $Fund, ":No"=> $Officer, ":str"=>"PARE-".$dateArr[0].$dateArr[1]."-",":yr"=>"%-".$dateArr[0].$dateArr[1]."%");
	    		$result = $db->prepare("INSERT INTO `tblpare`(`pareCode`, `parePO`, `officerIDFrom`, `officerIDTo`, `pareDateRequest`, `supplierID`, `fundID`, `no`) SELECT CONCAT(:str, LPAD((SELECT COUNT(*) FROM (SELECT COUNT(`pareCode`) as `code`  FROM `tblpare` WHERE `pareCode` LIKE :yr GROUP BY `pareCode`) as `tbl`)+1, 5, '0')) as `code`, :PONo, :Officer, :Employee, :dateRequest, :Supplier, :Fund, :No");
	    		$result->execute($params);

        		$pareID = $db->lastInsertId();

        		if($result->rowCount() == 0 || $result->rowCount() == "0")
        			throw new Exception('Insert PARE Error');

        		$result = $db->prepare("SELECT `pareCode` FROM `tblpare` WHERE `pareID` = :ID");
		        $result->execute([":ID"=>$pareID]);
		        $row = $result->fetch();
		        $pareCode = $row["pareCode"];

		        $result = $db->prepare("UPDATE `tblrisppe` SET `risppeStatus` = 1, `officerID` = :officer WHERE `risppeID` = :ID");
		        $result->execute([":ID" => $RISPPE, ":officer" => $Officer]);
		        if($result->rowCount() == 0 || $result->rowCount() == "0")
		        	throw new Exception('Update Error RISPPE');

		        $result = $db->prepare("SELECT `emp`.`accountID`, `emp`.`accountName` as `employee`, `off`.`accountName` as `officer`, IF(`tblcampus`.`campusID` = 1, CONCAT(`campusCode`, ' Campus'), `campusCode`) as `campus` FROM `tblrisppe` INNER JOIN `tblaccount` `emp` ON `emp`.`accountID` = `tblrisppe`.`employeeID` INNER JOIN `tblaccount` `off` ON `off`.`accountID` = `tblrisppe`.`officerID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `off`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `risppeID` = :ID");
		        $result->execute([":ID" => $RISPPE]);
		        $row = $result->fetch();
		        $employeeID_ForLogs = $row["accountID"];
		        $employeeName = $row["employee"];
		        $officerName = $row["officer"];
		        $campusName = $row["campus"];

		        $result = $db->prepare("SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :ID");
		        $result->execute([":ID" => $Employee]);
		        $row = $result->fetch();
		        $coordinatorName = $row["accountName"];

		        $LogRemarks = $officerName." issued the PAR (". $pareCode . ") of " . $employeeName . " to the Supply Coordinator of the " . $campusName . " (" . $coordinatorName . ")";
		        $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $employeeID_ForLogs, ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		        $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 5, 0, :ViewAccess, :Encoder);");
		        $result->execute($params);
		        if($result->rowCount() == 0 || $result->rowCount() == "0")
		        	throw new Exception('Log Error');

        		$arrayGenerate[] = array('message' => 'success', "ID" => $pareCode);
	    	}

	    	$supplyID = POST($PARE[$loop]["Equipment"],false);
	    	$Stock = POST($PARE[$loop]["Stock"],false);
	    	$serialKey = POST($PARE[$loop]["Serial"],false);
            $descID = POST($PARE[$loop]["descID"],false);
            $risppedet = POST($PARE[$loop]["risppedetID"], false);

	    	$params = array(":pareID"=> $pareID, ":supplyID"=> $supplyID, ":serialKey"=> $serialKey, ":no"=> $pareID, ":descID" => $descID, ":risppe" => $risppedet);
	    	$result = $db->prepare("INSERT INTO `tblparedet`(`pareID`, `supplyID`, `descID`, `risppedetID`, `pareSerial`, `no`)VALUES (:pareID, :supplyID, :descID, :risppe, :serialKey, :no)");
	    	$result->execute($params);

    		if($result->rowCount() == 0 || $result->rowCount() == "0"){
				$supplyName = POST($PARE[$loop]["EquipmentName"],false);
				throw new Exception('No Stock Available');
    		}

    		$result = $db->prepare("UPDATE `tblstock` SET `stockBalance` =  IF(`stockBalance` < 1, 0, `stockBalance` - 1) WHERE `stockID` = :Stock"); 
            $result->execute([':Stock' => $Stock]);
          
            if($result->rowCount() == 0 || $result->rowCount() == "0"){
                $supplyName = POST($PARE[$loop]["EquipmentName"],false);
                throw new Exception('No Stock Available');
            }

            $result = $db->prepare("SELECT `supplyID`, `descID`, `poID` FROM `tblstock` WHERE `stockID` = :ID");
            $result->execute([":ID" => $Stock]);
            $row = $result->fetch();

            $params = array(':POID' => $row["poID"], ':Supply' => $row["supplyID"], ':descID' => $row["descID"], ':risppeID' => $RISPPE, ':pare' => $pareID, ':no' => $Employee);
            $result = $db->prepare("INSERT INTO `tblsupplyused`(`poID`, `supplyID`, `descID`, `usedQuantity`, `risppeID`, `pareID`, `no`) VALUES (:POID, :Supply, :descID, 1, :risppeID, :pare, :no)");
            $result->execute($params);
            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Insert Supply Used Error');
    	}
	
	    $db->commit();
	}
	catch(Exception $e){
	    $arrayGenerate = [];
	    if ($e->getMessage() == "No Stock Available"){
	        $arrayGenerate[] = array('message' => 'No Stock Available', "supply" => $supplyName, "PARE" => $PARE , "ICS" => $ICS);
	    }else{
	        $arrayGenerate[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
	    }
	    $db->rollBack();
	}

	echo (json_encode($arrayGenerate));	
?>