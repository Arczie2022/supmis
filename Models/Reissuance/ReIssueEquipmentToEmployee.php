<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	$Type = POST("Type");
    $Employee = POST("Employee");
    $EmployeeCode = POST("EmployeeCode");
	$SerialKey = $_POST["Serial"];
	$Officer = $_SESSION["SUPMIS"]["supmis_ID"];
    $DateRequest =  date("Y-m-d");

    try{
        $db->beginTransaction();

        for ($i=0; $i < count($SerialKey); $i++) { 
		    $pareID = ($Type == "PAR" ? POST($SerialKey[$i]["ID"], false) : "0");
		    $icsID = ($Type == "ICS" ? POST($SerialKey[$i]["ID"], false) : "0");

		    $query = ($Type == "ICS" ? 
						"SELECT `tblicsdet`.`supplyID`, `chartLegend`, `tblicsdet`.`descID` FROM `tblicsdet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblicsdet`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblicsdet`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `icsdetID` = :ID" : 
						"SELECT `tblparedet`.`supplyID`, `chartLegend`, `tblparedet`.`descID` FROM `tblparedet` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblparedet`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblparedet`.`descID` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `paredetID` = :ID" );
		    $result = $db->prepare($query);
		    $result->execute([":ID"=>POST($SerialKey[$i]["ID"], false)]);
		    $row = $result->fetch();
		    $Supply = $row["supplyID"];
	        $legend = $row["chartLegend"];
	        $descID = $row["descID"];

	        $code = "CNSC-". $legend."-".$EmployeeCode."-";
	        $search = "CNSC-". $legend."-%";

		    $params = array(":Officer"=> $Officer, ":DateRequest"=> $DateRequest, ":Employee"=> $Employee, ":icsID"=> $icsID, ":pareID"=> $pareID, ":SerialKey"=> POST($SerialKey[$i]["text"], false), ":no"=> $Officer, ":Supply" => $Supply, ":code" => $code, ":search" => $search);
			$result = $db->prepare("INSERT INTO `tblreissue`(`reissueProperty`, `officerID`, `reissueDate`, `employeeID`, `icsdetID`, `paredetID`, `supplyID`, `reissueSerial`, `no`) SELECT CONCAT(:code, LPAD((SELECT COUNT(*)+1 FROM (SELECT COUNT(`reissueProperty`)  FROM `tblreissue` WHERE `reissueProperty` LIKE :search GROUP BY `reissueProperty`) as `table`), 5, '0')) as `code`, :Officer, :DateRequest, :Employee, :icsID, :pareID,  :Supply, :SerialKey, :no");
	    	$result->execute($params);
    		
            $reissueID = $db->lastInsertId();

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('reissue insert error');

            $result = $db->prepare("SELECT `IsReplace` FROM `tblsupplydesc` WHERE `descID` = :descID");
            $result->execute([":descID" => $descID]);
            $row = $result->fetch();
            $IsReplace = $row["IsReplace"];


            if ($IsReplace == 1 || $IsReplace == "1"){
	            $result = $db->prepare("INSERT INTO `tbldisposeparts`(`reissueID`, `descID`) VALUES (:reissueID, :descID);");
	            $result->execute([":reissueID" => $reissueID, ":descID" => $descID]);

	            if($result->rowCount() == 0 || $result->rowCount() == "0")
	            	throw new Exception('insert dispose parts error');
            }

            $result = $db->prepare("INSERT INTO `tblreissuedet`(`reissueID`, `descID`, `no`) VALUES (:reissueID, :descID, :no);");
            $result->execute([":reissueID" => $reissueID, ":no" => $Officer, ":descID" => $descID]);

            $reissuedetID = $db->lastInsertId();

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('reissuedet insert error');

           	$result = $db->prepare("UPDATE `tblreissue` SET `parentID` = :reissuedetID WHERE `reissueID` = :reissueID");
            $result->execute([":reissueID" => $reissueID, ":reissuedetID" => $reissuedetID]);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('update reissue error');

            $result = $db->prepare("SELECT IFNULL((SELECT `icsCode` FROM `tblics` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsID` = `tblics`.`icsID` WHERE `icsdetID` = :ics), (SELECT `pareCode` FROM `tblpare` INNER JOIN `tblparedet` ON `tblparedet`.`pareID` = `tblpare`.`pareID` WHERE `paredetID` = :pare)) as `issueCode`, (SELECT `supplyName` FROM `tblsupply` WHERE `supplyID` = :supply) as `supplyName`, (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :employee) as `employee`, (SELECT `accountName` FROM `tblaccount` WHERE `accountID` = :officer) as `officer`");
            $result->execute([":ics" => $icsID, ":pare" => $pareID, ":supply" => $Supply, ":employee" => $Employee, ":officer" => $Officer]);
            $row = $result->fetch();
            $issueCode = $row["issueCode"];
            $supplyName = $row["supplyName"];
            $employeeName = $row["employee"];
            $officerName = $row["officer"];

            $LogRemarks = $officerName . " reissued the " . $supplyName . " with the Barcode of " . POST($SerialKey[$i]["text"], false) . " to " . $employeeName . " with the Issuance Code of " . $issueCode;

            $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $Employee, ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
            $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 6, 0, :ViewAccess, :Encoder);");
            $result->execute($params);
            if($result->rowCount() == 0 || $result->rowCount() == "0")
            	throw new Exception('Log Error');
        }

        $db->commit();
		$arrayReIssue[] = array('message' => 'success');
    }
    catch(Exception $e){
    	$arrayReIssue = [];
		$arrayReIssue[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
        $db->rollBack();
    }

	echo (json_encode($arrayReIssue));

?>