<?php
	require '../../Models/Connection/connection_token.php';

    session_start();

    $dateRequest =  date("Y-m-d");
    $dateArr = explode("-", $dateRequest);

	$objRIS = $_POST["objRIS"];
    $Purpose = POST("Purpose");
    $Storage = POST("Storage");
    $Stockroom = POST("Stockroom");
    
    try{
        $db->beginTransaction();

        $params = array(':Employee' => $_SESSION["SUPMIS"]["supmis_ID"], ':DateRequest' => $dateRequest, ":str"=>"RIS-".$dateArr[0].$dateArr[1]."-",":yr"=>"%-".$dateArr[0].$dateArr[1]."%", ":Purpose" => $Purpose, ":Storage" => $Storage, ":Stockroom" => $Stockroom);
        $result = $db->prepare("INSERT INTO `tblris`(`risCode`, `employeeID`, `risDate`, `risPurpose`, `risStorage`, `risSource`) SELECT CONCAT(:str, LPAD((SELECT COUNT(*) FROM (SELECT COUNT(`risCode`) as `code`  FROM `tblris` WHERE `risCode` LIKE :yr GROUP BY `risCode`) as `tbl`)+1, 5, '0')) as `code`, :Employee, :DateRequest, :Purpose, :Storage, :Stockroom");
        $result->execute($params);

        $risID = $db->lastInsertId();

        $result = $db->prepare("SELECT `risCode` FROM `tblris` WHERE `risID` = :ID");
        $result->execute([":ID"=>$risID]);
        $row = $result->fetch();
        $risCode = $row["risCode"];

        $result = $db->prepare("SELECT `accountName`, `officeName` FROM `tblaccount` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `accountID` = :Employee");
        $result->execute([":Employee" => $_SESSION["SUPMIS"]["supmis_ID"]]);
        $row = $result->fetch();
        $employeeName = $row["accountName"];
        $officeName = $row["officeName"];

        $LogRemarks = $employeeName." (". $officeName .") is requesting Supplies with the RIS Code: ".$risCode . "";
        $params = array(':Remarks' => $LogRemarks, ':Officer' => "0", ':Employee' => "0", ':ViewAccess' => '1,2,3,4,5,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
        $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 4, 0, :ViewAccess, :Encoder);");
        $result->execute($params);
        if($result->rowCount() == 0 || $result->rowCount() == "0")
            throw new Exception('Log Error');

    	for ($i=0; $i < count($objRIS); $i++) { 

            $tempQuantity = POST($objRIS[$i]["quantity"], false);
            $tempDesc = POST($objRIS[$i]["description"], false);
            $tempUnit = POST($objRIS[$i]["unit"], false);
            $tempSupply = POST($objRIS[$i]["supply"], false);
            $tempPrevQuantity = 0;
            $tempSaveQuantity = 0;
            $tempPONo = 0;

            $params = array(':ID' => $risID, ':Supply' => $tempSupply, ':Quantity' => $tempQuantity);
            $result = $db->prepare("INSERT INTO `tblrisdet`(`risID`, `supplyID`, `stockID`, `risQuantity`, `risStatus`) VALUES (:ID, :Supply, '-1', :Quantity, 0);");
            $result->execute($params);
            
            
        }
        

        $db->commit();

        $arrayRequestSupply[] = array('message' => 'success', "ID" => $risCode);
	}
    catch(Exception $e){
        $err = explode("@", $e->getMessage());
        if ($err[0] == "Update Stock Error"){
            $arrayRequestSupply[] = array('message' => 'Update Stock Error RIS', "supply" => $err[1], $params);
        }else{
            $arrayRequestSupply[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
        }
        $db->rollBack();
    }

    echo (json_encode($arrayRequestSupply));
?>