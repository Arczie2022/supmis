<?php
	require '../../Models/Connection/connection_token.php';
	try{
	    $db->beginTransaction();
	
	    $result = $db->prepare("SELECT (SELECT `chartName` FROM `tblchartaccount` WHERE `chartID` = :Chart) as  `oldChart`, (SELECT `chartName` FROM `tblsupplydesc` INNER JOIN `tblchartaccount` ON `tblchartaccount`.`chartID` = `tblsupplydesc`.`chartID_Acc` WHERE `descID` = :descID) as `newChart`");
	    $result->execute([":descID" => POST("ID"), ":Chart" => POST("Chart")]);
	    $row = $result->fetch();
	    $oldChart = $row["oldChart"];
	    $newChart = $row["newChart"];

		$params = array(':ID' => POST("ID"), ':Chart' => POST("Chart"));
		$result = $db->prepare("UPDATE `tblsupplydesc` SET `chartID_Acc` = :Chart  WHERE `descID` = :ID");
		$result->execute($params);
    	
    	$result = $db->prepare("SELECT `poCode`, `supplyName` FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblsupplydesc`.`descID` = `tblstock`.`stockID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` WHERE `tblsupplydesc`.`descID` = :ID");
    	$result->execute([":ID" => POST("ID")]);
    	$row = $result->fetch();
    	$poCode = $row["poCode"];
    	$supplyName = $row["supplyName"];

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($oldChart), array($newChart), array("Chart of Account"), POST("ID"), " of supply (".$supplyName.") in PO Number (".$poCode.")");
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 1,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

	    $db->commit();
		$arrayUpdateChart[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayUpdateChart[] = array("message" => "Connection Error");
	}

	jsEncode($arrayUpdateChart);
	$result = null;
?>