<?php
	require '../../Models/Connection/connection_token.php';

	if(POST("TYPE") == "ICS"){
		$result = $db->prepare("SELECT `tblaccount`.`accountID`, `accountName`, `accountUsername`, `tbloffices`.`officeID`, `officeName`, `officeCode` FROM `tblics` INNER JOIN `tblicsdet` ON `tblicsdet`.`icsID` = `tblics`.`icsID` INNER JOIN `tblrisppedet` ON `tblrisppedet`.`risppedetID` = `tblicsdet`.`risppedetID` INNER JOIN `tblrisppe` ON `tblrisppe`.`risppeID` = `tblrisppedet`.`risppeID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblrisppe`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblics`.`icsID` = :ID GROUP BY `tblaccount`.`accountID` "); 
		$result->execute([":ID"=>POST("ID")]);
		$row = $result->fetch();
		$EmployeeID = $row["accountID"];
		$Employee = $row["accountName"]." (".$row["accountUsername"].")";
		$OfficeID = $row["officeID"];
		$Office = $row["officeName"]." (".$row["officeCode"].")";

		$result = $db->prepare("SELECT `icsdetID` as `detailsID`, `icsSerial` as `SerialKey` FROM `tblicsdet` WHERE NOT `icsdetID` IN (SELECT `icsdetID` FROM `tblreissue` WHERE `icsdetID` != 0) AND `icsID` = :ID");
	}
	else{
		$result = $db->prepare("SELECT `tblaccount`.`accountID`, `accountName`, `accountUsername`, `tbloffices`.`officeID`, `officeName`, `officeCode` FROM `tblpare` INNER JOIN `tblparedet` ON `tblparedet`.`pareID` = `tblpare`.`pareID` INNER JOIN `tblrisppedet` ON `tblrisppedet`.`risppedetID` = `tblparedet`.`risppedetID` INNER JOIN `tblrisppe` ON `tblrisppe`.`risppeID` = `tblrisppedet`.`risppeID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblrisppe`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` WHERE `tblpare`.`pareID` = :ID GROUP BY `tblaccount`.`accountID` "); 
		$result->execute([":ID"=>POST("ID")]);
		$row = $result->fetch();
		$EmployeeID = $row["accountID"];
		$Employee = $row["accountName"]." (".$row["accountUsername"].")";
		$OfficeID = $row["officeID"];
		$Office = $row["officeName"]." (".$row["officeCode"].")";

		$result = $db->prepare("SELECT `paredetID` as `detailsID`, `pareSerial` as `SerialKey` FROM `tblparedet` WHERE NOT `paredetID` IN (SELECT `paredetID` FROM `tblreissue`  WHERE `paredetID` != 0) AND `pareID` = :ID");
	}

	$result->execute([":ID"=>POST("ID")]);
	while($row = $result->fetch()){
		$arraySerialKey[] = array('message' => 'success', 'ID' => $row["detailsID"], 'Serial' => $row["SerialKey"], "Employee" => $Employee, "EmployeeID" => $EmployeeID, "Office" => $Office, "OfficeID" => $OfficeID);		
	}
	if(empty($arraySerialKey)) $arraySerialKey[] = array('message' => 'Connection Error');
	
	echo (json_encode($arraySerialKey));
?>