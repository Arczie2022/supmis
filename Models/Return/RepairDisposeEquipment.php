<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	try{
	    $db->beginTransaction();
		
	    $result = $db->prepare("UPDATE `tblreissue` SET `reissueStatus` = 4 WHERE `reissueID` = :ID");
	    $result->execute([":ID" => POST("reissueID")]);

	    if($result->rowCount() == 0 || $result->rowCount() == "0")
	    	throw new Exception("Update Failed");
	   	
		$result = $db->prepare("INSERT INTO `tblreturn`(`reissueID`, `isReturn`, `returnDate`, `returnIsWork`, `returnRemarks`, `officerID`, `repairCost`, `repairType`, `no`) SELECT `reissueID`, 3, CURDATE(), `returnIsWork`, `returnRemarks`, :Officer, :Cost, :TypeRepair, :no  FROM `tblreturn`  WHERE `returnID` = :ID");
		$result->execute([":ID" => POST("returnID"), ":Cost" => POST("Cost"), ":TypeRepair" => POST("TypeRepair"), ":Officer" => $_SESSION["SUPMIS"]["supmis_ID"], ":no" => $_SESSION["SUPMIS"]["supmis_ID"]]);	   	 	
	    if($result->rowCount() == 0 || $result->rowCount() == "0")
	    	throw new Exception("insert Failed");

	    
		$result = $db->prepare("SELECT `employeeID`, `accountName`, `supplyName`, `reissueProperty` FROM  `tblreissue`  INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tblsupply` ON `tblreissue`.`supplyID` = `tblsupply`.`supplyID` WHERE `tblreissue`.`reissueID` = :ID");
		$result->execute([":ID" => POST("reissueID")]);
		$row = $result->fetch();
		$LogsEmpID = $row["employeeID"];
		$LogsEmpName = $row["accountName"];
		$LogsSupply = $row["supplyName"];
		$LogsProperty = $row["reissueProperty"];


		$LogRemarks = $LogsSupply . " of the Mr/Ms. " . $LogsEmpName . " (". $LogsProperty .") has been forwarded for disposal.";
	    $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,2,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
	    $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 8, 0, :ViewAccess, :Encoder);");
	    $result->execute($params);
	    if($result->rowCount() == 0 || $result->rowCount() == "0")
	    	throw new Exception('Log Error');


	    $db->commit();
	    $arrayforDisposal[] = array("message" => "success");
	}
	catch(Exception $e){
	    $arrayforDisposal = [];
    	$arrayforDisposal[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	    $db->rollBack();
	}

	jsEncode($arrayforDisposal);

?>