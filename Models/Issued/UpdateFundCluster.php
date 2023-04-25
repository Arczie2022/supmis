<?php
	require '../../Models/Connection/connection_token.php';

	try{
	    $db->beginTransaction();

	    $result = $db->prepare("SELECT (SELECT `fundName` FROM `tblfundcluster` WHERE `fundID` = :fund) as  `oldfund`, (SELECT `fundName` FROM `tblpo` INNER JOIN `tblfundcluster` ON `tblfundcluster`.`fundID` = `tblpo`.`fundID` WHERE `poID` = :PO) as `newfund`, (SELECT `poCode` FROM `tblpo` WHERE `poID` = :POID) as `poCode`");
	    $result->execute([":PO" => POST("PO"), ":POID" => POST("PO"), ":fund" => POST("fund")]);
	    $row = $result->fetch();
	    $oldfund = $row["oldfund"];
	    $newfund = $row["newfund"];
	    $poCode = $row["poCode"];

	
		$result = $db->prepare("UPDATE `tblpo` SET `fundID` = :Fund WHERE `poID` = :PO");
		$result->execute([":Fund" => POST("Fund"), ":PO" => POST("PO")]);

		require_once '../../Models/Main/UpdateLogsQuery.php';
		
		$ArrayRemarks = updateLogRemarks(array($oldfund), array($newfund), array("Fund Cluster"), POST("PO"), " of Purchase Order No. (".$poCode.")");
		for ($logsLoop=0; $logsLoop < count($ArrayRemarks); $logsLoop++) { 
			$params = array(':Remarks' => $ArrayRemarks[$logsLoop], ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,3,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
			$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 9, 1,:ViewAccess, :Encoder);");
			$result->execute($params);
			if($result->rowCount() == 0 || $result->rowCount() == "0")
				throw new Exception('Log Error');
		}

	    $db->commit();
		$arrayUpdateFund[] = array("message" => "success");
	}
	catch(Exception $e){
	    $db->rollBack();
		$arrayUpdateFund[] = array("message" => "Connection Error");
	}

	jsEncode($arrayUpdateFund);
	$result = null;
?>