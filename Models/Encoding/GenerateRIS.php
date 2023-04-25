<?php
	require '../../Models/Connection/connection_token.php';

    session_start();

	$objRIS = $_POST["RIS"];

    $Code = POST("Code");
    $Officer = POST("Officer");
    $Employee = POST("Employee");
    $Purpose = POST("Purpose");
    $DateRequest = POST("DateRequest");
    $Encoder = $_SESSION["SUPMIS"]["supmis_ID"];
    $isBool = false;
    $dateArr = explode("-", $DateRequest);

    try{
        $db->beginTransaction();

        $params = array(":Code" => $Code, ":Officer" => $Officer, ":Employee" => $Employee, ":DateRequest" => $DateRequest, ":Purpose" => $Purpose, ":Encoder" => $Encoder);
        $result = $db->prepare("INSERT INTO `tblris`(`risCode`, `officerID`, `employeeID`, `risDate`, `risPurpose`, `no`) VALUES (:Code, :Officer, :Employee, :DateRequest, :Purpose, :Encoder)");
        $result->execute($params);

        $risID = $db->lastInsertId();

        if($result->rowCount() == 0 || $result->rowCount() == "0")
        	throw new Exception('Insert Error RIS');


        $result = $db->prepare("SELECT (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :Employee) as `employee`, (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :Officer) as `officer`");
        $result->execute([":Employee" => $Employee, ":Officer" => $Officer]);
        $row = $result->fetch();
        $LogEmp = $row["employee"];
        $LogOff = $row["officer"];

        $LogRemarks = $LogOff. " has been issued RIS (".$Code .") to " . $LogEmp;
        $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $Employee, ':ViewAccess' => '1,2,3,4,5,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
        $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 5, 0, :ViewAccess, :Encoder);");
        $result->execute($params);
        if($result->rowCount() == 0 || $result->rowCount() == "0")
            throw new Exception('Log Error');


    	for ($i=0; $i < count($objRIS); $i++) { 
            $isBool = true;
            $StockID = POST($objRIS[$i]["StockID"], false);
			$SupplyName = POST($objRIS[$i]["SupplyName"], false);
			$Supply = POST($objRIS[$i]["Supply"], false);
			$ApprovedQuantity = POST($objRIS[$i]["ApprovedQuantity"], false);
			$RequestedQuantity = POST($objRIS[$i]["RequestedQuantity"], false);
			$Unit = POST($objRIS[$i]["Unit"], false);
			$Remarks = POST($objRIS[$i]["Remarks"], false);

	    	$result = $db->prepare("UPDATE `tblstock` SET `stockBalance` =  IF(`stockBalance` < :Quantity1, 0, `stockBalance` - :Quantity2) WHERE `stockID` = :ID");
            $result->execute([':ID' => $StockID, ":Quantity1" => $ApprovedQuantity, ":Quantity2" => $ApprovedQuantity]);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('No Stock Available');

            $result = $db->prepare("SELECT `descID`, `poID` FROM `tblstock` WHERE `stockID` = :ID");
            $result->execute([":ID" => $StockID]);
            $row = $result->fetch();
            $POID = $row["poID"];
            $DescID = $row["descID"];


            $params = array(":POID" => $POID, ":Supply" => $Supply, ":descID" => $DescID, ":Quantity" => $ApprovedQuantity, ":RIS" => $risID, ":no" => $Encoder); 
            $result = $db->prepare("INSERT INTO `tblsupplyused`(`poID`, `supplyID`, `descID`, `usedQuantity`, `risID`, `issuanceNew`, `no`) VALUES(:POID, :Supply, :descID, :Quantity, :RIS, 0, :no)");
            $result->execute($params);

            $params = array(":ID" => $risID, ":Supply" => $Supply, ":StockID" => $StockID, ":Requested" => $RequestedQuantity, ":Approved" => $ApprovedQuantity, ":Remarks" => $Remarks, ":Encoder" => $Encoder); 
            $result = $db->prepare("INSERT INTO `tblrisdet`(`risID`, `risNew`, `supplyID`, `stockID`, `risQuantity`, `risAvailable`, `risStatus`, `risRemarks`, `no`) VALUES (:ID, 0, :Supply, :StockID, :Requested, :Approved, 4, :Remarks, :Encoder);");
            $result->execute($params);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Insert Error RISDET');
        }
        if ($isBool)
            $db->commit();
        else
            throw new Exception('Di pumasok sa Loop');

        $arrayRequestSupply[] = array('message' => 'success', "ID" => $Code);
	}
    catch(Exception $e){
	    $arrayRequestSupply = [];
	    if ($e->getMessage() == "No Stock Available"){
	        $arrayRequestSupply[] = array('message' => 'No Stock Available', "supply" => $SupplyName);
	    }else{
	        $arrayRequestSupply[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage(), $objRIS);
	    }
        $db->rollBack();
    }

    echo (json_encode($arrayRequestSupply));
?>