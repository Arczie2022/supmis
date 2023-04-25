<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	try{
	    $db->beginTransaction();
		
	    $result = $db->prepare("SELECT `supplyCode`, `supplyName`, `supplyProperty`, `supTypeName` FROM `tblsupply` INNER JOIN `tblsupplytype` ON `tblsupplytype`.`supTypeID` = `tblsupply`.`supTypeID`  WHERE `supplyID` = :ID"); 
	    $result->execute([":ID" => POST("ID")]);
	    $row = $result->fetch();
	    $Code = $row["supplyCode"];
	    $Name = $row["supplyName"];
	    $Property = $row["supplyProperty"];
	    $Type = $row["supTypeName"];

		$params = array(":Code"=> POST("Code"), ":Name"=> POST("Name"), ":Property"=> POST("Property"), ":Type"=> POST("Type"), ":ID"=> POST("ID"));
		$result = $db->prepare("UPDATE `tblsupply` SET `supplyCode`= :Code, `supplyName`= :Name, `supplyProperty`= :Property, `supTypeID`= :Type WHERE `supplyID`= :ID");
		$result->execute($params);

		$result = $db->prepare("SELECT `supTypeName` FROM `tblsupplytype` WHERE `supTypeID` = :ID");
		$result->execute([":ID" => POST("Type")]);
		$row = $result->fetch();
	    $TypeNew = $row["supTypeName"];

		require_once '../../Models/Main/UpdateLogsQuery.php';
		$ArrayRemarks = updateLogRemarks(
			array($Code, $Name, $Property, $Type), array(POST("Code"), POST("Name"), POST("Property"), $TypeNew), array("Supply Code", "Supply Name", "Supply Property", "Supply Type"), POST("ID"));
		
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 0,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

		$db->commit();
		$arraySupply[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arraySupply[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage(), $ArrayRemarks, $Code, POST("Code"));
	}

	jsEncode($arraySupply);

	$result = null;

?>