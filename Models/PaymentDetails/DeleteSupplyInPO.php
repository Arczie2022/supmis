<?php
	require '../../Models/Connection/connection_token.php';

	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT `poCode`, `supplyName`, `supplyProperty` FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` WHERE `tblsupplydesc`.`descID` = :ID");
		$result->execute([":ID" => POST("ID")]);
		$row = $result->fetch();
		$Equipment = $row["supplyProperty"] == "" ? $row["supplyName"] : $row["supplyName"] . " (" .  $row["supplyProperty"] . ")";
		$PONo = $row["poCode"];

		$result = $db->prepare("DELETE FROM `tblsupplydesc` WHERE `descID`= :ID AND (SELECT COUNT(*) as `count` FROM `tblsupplyused` WHERE `descID` = :SubID) = 0");
		$result->execute([":ID" => POST("ID"), ":SubID" => POST("ID")]);

		if($result->rowCount() == 0 || $result->rowCount() == "0")
			$arrayResult[] = array("message" => "cantdelete", "supply" => $Equipment, "PONo" => $PONo);

		$result = $db->prepare("DELETE FROM `tblstock` WHERE `stockAvailable` = `stockBalance` AND `descID` = :ID");
		$result->execute([":ID" => POST("ID")]);

		if($result->rowCount() == 0 || $result->rowCount() == "0")
			$arrayResult[] = array("message" => "cantdelete", "supply" => $Equipment, "PONo" => $PONo);

		$LogRemarks = "The " . $Equipment. " has been deleted in the PO No. " . $PONo;
		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "", ':ViewAccess' => '1,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 12, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

	    $db->commit();
	    $arrayResult[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayResult[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}

	jsEncode($arrayResult);
?>