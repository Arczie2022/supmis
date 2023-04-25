<?php 
	require '../../Models/Connection/connection_token.php';

	session_start();

    try{
        $db->beginTransaction();

        $ID = $_POST["ID"];

        $PO = $_POST["PO"];
        $DR = $_POST["DR"];
        $Desc = $_POST["Desc"];
        $Purpose = $_POST["Purpose"];
        $Warranty = $_POST["Warranty"];
        $Type = $_POST["Type"];

        $Fund = $_POST["Fund"];
        $Supplier = $_POST["Supplier"];
        $PAP = $_POST["PAP"];
        $Chart = $_POST["Chart"];
        $Received = $_POST["Received"];
        $Receipt = $_POST["Receipt"];

        $Stock = $_POST["Stock"];
        $Price = $_POST["Price"];
        $Unit = $_POST["Unit"];
        $Replace = $_POST["Replace"];
        $Parts = $_POST["Parts"];


        for ($i=0; $i < count($ID); $i++) { 

            $result = $db->prepare("SELECT `poID` FROM `tblpo` WHERE `poCode` = :Code");
            $result->execute([":Code" => POST($PO[$i], false)]);

            if($result->rowCount() == 0 || $result->rowCount() == "0"){
                $params = array(":Code"=> POST($PO[$i], false), ":Fund"=> POST($Fund[$i], false), ":fundID_SPMO"=> POST($Fund[$i], false), ":Supplier"=> POST($Supplier[$i], false), ":PAP"=> POST($PAP[$i], false), ":Receipt"=> POST($Receipt[$i], false), ":No"=> $_SESSION["SUPMIS"]["supmis_ID"]);
                $result = $db->prepare("INSERT INTO `tblpo`(`poCode`, `poDateReceipt`, `fundID`, `fundID_SPMO`, `supplierID`, `papID`, `No`) VALUES (:Code, :Receipt, :Fund, :fundID_SPMO, :Supplier, :PAP, :No)");
                $result->execute($params);

                $POID = $db->lastInsertId();

                if($result->rowCount() == 0 || $result->rowCount() == "0")
                    throw new Exception('Insert PO Error');
            }else{
                $row = $result->fetch();
                $POID = $row["poID"];
            }
            $params = array(':Supply' => POST($ID[$i], false), ':Unit' => POST($Unit[$i], false), ':Description' => POST($Desc[$i], false), ':Purpose' => POST($Purpose[$i], false), ':Price' => POST($Price[$i], false), ':Replace' => POST($Replace[$i], false), ':ReplaceParts' => POST($Parts[$i], false), ':Consumable' => POST($Type[$i], false), ':Warranty' => POST($Warranty[$i], false), ':ChartSPMO' => POST($Chart[$i], false), ':ChartAcc' => POST($Chart[$i], false), ':No' => $_SESSION["SUPMIS"]["supmis_ID"]);
            $result = $db->prepare("INSERT INTO `tblsupplydesc`(`supplyID`, `supplyUnit`, `supplyDesc`, `supplyPurpose`, `supplyPrice`, `IsReplace`, `replaceParts`, `Consumable`, `Warranty`, `chartID_SPMO`, `chartID_Acc`, `no`) VALUES (:Supply, :Unit, :Description, :Purpose, :Price, :Replace, :ReplaceParts, :Consumable, :Warranty, :ChartSPMO, :ChartAcc, :No);");
            $result->execute($params);

            $descID = $db->lastInsertId();

            if($result->rowCount() == 0 || $result->rowCount() == "0")
                throw new Exception('Insert Supply Desc Error');

            $params = array(":Supply" => POST($ID[$i], false), ":Available" => POST($Stock[$i], false), ":Balance" => POST($Stock[$i], false), ":DescID" => $descID, ":PO" => $POID, ":DRCode" => POST($DR[$i], false), ":DRDate" => POST($Received[$i], false), ":No" => $_SESSION["SUPMIS"]["supmis_ID"]);
            $result = $db->prepare("INSERT INTO `tblstock`(`supplyID`, `stockAvailable`, `stockBalance`, `descID`, `poID`, `DRCode`, `DRDate`, `no`) VALUES (:Supply, :Available, :Balance, :DescID, :PO, :DRCode, :DRDate, :No);"); 
            $result->execute($params);

            if($result->rowCount() == 0 || $result->rowCount() == "0")
                throw new Exception('Insert Error Stock');

            $result = $db->prepare("SELECT `supplyName` FROM `tblsupply` WHERE `supplyID` = :Supply");
            $result->execute([":Supply" => POST($ID[$i], false)]);
            $row = $result->fetch();
            $SupplyName = $row["supplyName"];
            
            $LogRemarks = POST($Stock[$i], false)." more ".POST($Unit[$i], false)."/s added in ".$SupplyName;
            $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => '0', ':ViewAccess' => '0,1,2,3,4,5,6,7,8,9,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
            $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 3, 0, :ViewAccess, :Encoder);");
            $result->execute($params);
            if($result->rowCount() == 0 || $result->rowCount() == "0")
                throw new Exception('Log Error');
        }

        $db->commit();
		$arrayStock[] = array('message' => 'success');
    }
    catch(Exception $e){
        $db->rollBack();
		$arrayStock[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
    }
	echo (json_encode($arrayStock));
	$result = null;

?>