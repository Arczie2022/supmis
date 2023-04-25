<?php
	require '../../Models/Connection/connection_token.php';
	
	session_start();

	$result = $db->prepare("SELECT `logID`, `logRemarks`, IFNULL(`officer`.`accountName`, '-') as `officerName`, `tbllogs`.`DateCreated`, `logNotif`, IFNULL(`employee`.`accountName`, '') as `employeeName` FROM `tbllogs` LEFT JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tbllogs`.`officerID` LEFT JOIN `tblaccount` `employee` ON `employee`.`accountID` = `tbllogs`.`employeeID` WHERE (`logType` = :Type1 OR :Type2 = '-1') AND (`logView` LIKE :View  OR `tbllogs`.`employeeID` = :Employee) AND DATE(`tbllogs`.`DateCreated`) <= :ToDate AND DATE(`tbllogs`.`DateCreated`) >= :FromDate");
	$result->execute([":Type1" => POST("Type"), ":Type2" => POST("Type"), ":View" => "%".$_SESSION["SUPMIS"]["supmis_level"]."%", ":FromDate" => POST("fromDate"), ":ToDate" => POST("toDate"), ":Employee" => $_SESSION["SUPMIS"]["supmis_ID"]]);

	while($row = $result->fetch()){
		$arrayLogs[] = array("message" => "success", 'ID' => $row["logID"], 'Remarks' => $row["logRemarks"], 'Officer' => $row["officerName"], 'logDate' => $row["DateCreated"], 'Notif' => $row["logNotif"], 'Employee' => $row["employeeName"]);
	}

	jsEncode($arrayLogs);

	$result = null;

?>