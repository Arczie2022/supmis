<?php
	require '../../Models/Connection/connection_token.php';

	function supplierStatus($status){
		if ($status == "1" || $status == 1){
			return  "Active";
		}
		else if ($status == "2" || $status == 2){
			return  "Suspended";
		}
		else if ($status == "3" || $status == 3){
			return  "Blacklist";
		}
		else{
			return "";
		}
	}
	
	session_start();
	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT `supplierCode`, `supplierName`, `supplierAddress`, `supplierGEPS`, `supplierDBP`, `supplierEmail`, `supplierCPerson`, `supplierPosition`, `supplierTelNo`, `supplierCpNo`, `supplierTIN`, `supplierStatus` FROM `tblsupplier` WHERE `supplierID` = :ID");
	    $result->execute([":ID" => POST("ID")]);
	    $row = $result->fetch();

		$Code = $row["supplierCode"];
		$Name = $row["supplierName"];
		$Address = $row["supplierAddress"];
		$Email = $row["supplierEmail"];
		$CPerson = $row["supplierCPerson"];
		$Position = $row["supplierPosition"];
		$Telephone = $row["supplierTelNo"];
		$Cellphone = $row["supplierCpNo"];
		$DBP = $row["supplierDBP"];
		$GEPS = $row["supplierGEPS"];
		$TIN = $row["supplierTIN"];
		$Status = supplierStatus($row["supplierStatus"]);
	
		$params = array(":Name"=> POST("Name"), ":Address"=> POST("Address"), ":Email"=> POST("Email"), ":CPerson"=> POST("CPerson"), ":Position"=> POST("Position"), ":Telephone"=> POST("Telephone"), ":Cellphone"=> POST("Cellphone"), ":DBP"=> POST("DBP"), ":GEPS"=> POST("GEPS"), ":TIN"=> POST("TIN"), ":Status"=> POST("Status"), ":ID" =>  POST("ID"));
		$result = $db->prepare("UPDATE `tblsupplier` SET `supplierName`= :Name,`supplierAddress`= :Address,`supplierGEPS`= :GEPS,`supplierDBP`= :DBP,`supplierEmail`= :Email, `supplierCPerson`= :CPerson, `supplierPosition`= :Position, `supplierTelNo`= :Telephone, `supplierCpNo`= :Cellphone, `supplierTIN`= :TIN, `supplierStatus`= :Status WHERE `supplierID` = :ID");
		$result->execute($params);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($Name, $Address, $Email, $CPerson, $Position, $Telephone, $Cellphone, $DBP, $GEPS, $TIN, $Status), array(POST("Name"), POST("Address"), POST("Email"), POST("CPerson"), POST("Position"), POST("Telephone"), POST("Cellphone"), POST("DBP"), POST("GEPS"), POST("TIN"), supplierStatus(POST("Status"))), array("Name", "Address", "Email", "CPerson", "Position", "Telephone", "Cellphone", "DBP", "GEPS", "TIN", "Status"), POST("ID"), " with the supplier code of " . $Code);
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

	    $db->commit();

		$arrayUpdate[] = array('message' => 'success');
	}
	catch(Exception $e){
		$arrayUpdate[] = array('message' => 'Connection Error');
	    $db->rollBack();
	}

	jsEncode($arrayUpdate);

	$result = null;
?>
