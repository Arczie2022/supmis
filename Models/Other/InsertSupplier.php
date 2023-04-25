<?php
	require '../../Models/Connection/connection_token.php';
	
	session_start();

	try{
	    $db->beginTransaction();
	
		$params = array(":Name"=> POST("Name"), ":Address"=> POST("Address"), ":Email"=> POST("Email"), ":CPerson"=> POST("CPerson"), ":Position"=> POST("Position"), ":Telephone"=> POST("Telephone"), ":Cellphone"=> POST("Cellphone"), ":DBP"=> POST("DBP"), ":GEPS"=> POST("GEPS"), ":TIN"=> POST("TIN"), ":Status"=> POST("Status"), ":No" => $_SESSION["SUPMIS"]["supmis_ID"]);

		$result = $db->prepare("INSERT INTO `tblsupplier`(`supplierName`, `supplierAddress`, `supplierGEPS`, `supplierDBP`, `supplierEmail`, `supplierCPerson`, `supplierPosition`, `supplierTelNo`, `supplierCpNo`, `supplierTIN`, `supplierStatus`, `no`) VALUES (:Name, :Address, :GEPS, :DBP, :Email, :CPerson, :Position, :Telephone, :Cellphone, :TIN, :Status, :No)");
		
		if($result->execute($params)){
			$arrayInsert[] = array('message' => 'success');
			$ID = $db->lastInsertId();

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Insert Error Supplier');

			$result = $db->prepare("UPDATE `tblsupplier` SET `supplierCode` = CONCAT('S', LPAD(:ID_1, '4', '0')) WHERE `supplierID` = :ID_2");
			$result->execute([":ID_1"=>$ID, ":ID_2"=>$ID]);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Error Supplier Code');
		}
		else{
			throw new Exception("Error Insert Supplier");
			
		}	

		$LogRemarks = POST("Name") . " has been added in Suppliers' Database";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 2, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

		$db->commit();
		$arrayInsert[] = array('message' => 'success');
	}
	catch(Exception $e){
		$arrayInsert[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
	    $db->rollBack();
	}
	echo (json_encode($arrayInsert));

	$result = null;
?>