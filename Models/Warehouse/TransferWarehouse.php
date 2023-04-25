<?php
	require '../../Models/Connection/connection_token.php';

	try{
	    $db->beginTransaction();
		
	    session_start();

		$reissue = POST("reissue");
		$return = POST("return");
		$warehousedet = POST("warehousedet");
		$newWarehouse = POST("TransferWarehouse");

	    $result = $db->prepare("UPDATE `tblwarehousedet` SET `warehouseStatus` = 0, `No` = :No WHERE `warehousedetID` = :ID");
	    $result->execute([":No" => $_SESSION["SUPMIS"]["supmis_ID"], ":ID" => $warehousedet]);

	    if($result->rowCount() == 0 || $result->rowCount() == "0")
	    	throw new Exception('No Update happened');

	    $params = array(':warehouse' => $newWarehouse, ':reissue' => $reissue, ':officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':return' => $return, ':no' => $_SESSION["SUPMIS"]["supmis_ID"]);
	    $result = $db->prepare("INSERT INTO `tblwarehousedet`(`warehouseID`, `reissueID`, `officerID`, `returnID`, `warehouseStatus`, `No`) VALUES (:warehouse, :reissue, :officer, :return, 1, :no);");
	    $result->execute($params);

		$result = $db->prepare("SELECT `employeeID`, `accountName`, `supplyName`, `reissueProperty`, (SELECT `warehouseName` FROM `tblwarehouse` WHERE `warehouseID` = :Warehouse) as `warehouse` FROM  `tblreissue`  INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tblsupply` ON `tblreissue`.`supplyID` = `tblsupply`.`supplyID` WHERE `tblreissue`.`reissueID` = :ID");
		$result->execute([":ID" => $reissue, ":Warehouse" => $newWarehouse]);
		$row = $result->fetch();
		$LogsEmpID = $row["employeeID"];
		$LogsEmpName = $row["accountName"];
		$LogsSupply = $row["supplyName"];
		$LogsProperty = $row["reissueProperty"];
		$LogsWarehouse = $row["warehouse"];

		$LogRemarks = $LogsSupply . " of the Mr/Ms. " . $LogsEmpName . " (". $LogsProperty .")  has been forwarded to another warehouse (" .$LogsWarehouse.  ").";
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => $LogsEmpID, ':ViewAccess' => '1,3,4,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 7, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

	    $db->commit();
	    $arrayTransfer[] = array('message' => 'success');
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayTransfer[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
	}

	jsEncode($arrayTransfer);
	$result = null;
?>