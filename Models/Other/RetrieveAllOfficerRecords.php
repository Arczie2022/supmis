<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `DateTimeCreated` as `Date`, `emp`.`accountName` as `employee`, `officer`.`accountName` as `officer`, `from`.`userId` as `fromID`, `from`.`userType` as `fromType`, `to`.`userId` as `toId`, `to`.`userType` as `toType`  FROM `tblofficerrecord` INNER JOIN `tblaccount` `emp` ON `emp`.`accountID` = `tblofficerrecord`.`accountID` INNER JOIN `tblaccount` `officer` ON `officer`.`accountID` = `tblofficerrecord`.`no` INNER JOIN `tblaccountlevel` `from` ON `from`.`userID` = `tblofficerrecord`.`fromLevel` INNER JOIN `tblaccountlevel` `to` ON `to`.`userID` = `tblofficerrecord`.`toLevel`"); 
	$result->execute();

	while($row = $result->fetch()){
		$remarks = "";
		if ($row["fromID"] == "7" || $row["fromID"] == 7)
			$remarks = "<span style = 'color: maroon; font-weight: 600;'>" . $row["toType"] . "</span> position has been assigned";
		else if ($row["toId"] == "7" || $row["toId"] == 7)
			$remarks = "<span style = 'color: maroon; font-weight: 600;'>" . $row["fromType"] . "</span> position has been removed";
		else 
			$remarks = "From <span style = 'color: maroon; font-weight: 600;'>" . $row["fromType"] . "</span> position has been changed to <span style = 'color: maroon; font-weight: 600;'>" . $row["toType"] . "</span> position";
		$arrayRecords[] = array("message" => "success", 'Date' => $row["Date"], 'employee' => $row["employee"], 'officer' => $row["officer"], "remarks" => $remarks);
	}

	jsEncode($arrayRecords);

?>