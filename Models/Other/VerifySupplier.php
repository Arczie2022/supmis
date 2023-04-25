<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`supplierID`) as `count` FROM `tblsupplier` WHERE `supplierName` = :Name AND NOT `supplierID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`supplierID`) as `count` FROM `tblsupplier` WHERE `supplierGEPS` = :GEPS AND NOT `supplierID` = :ID");
	$result->execute([":GEPS"=>POST("GEPS"), ":ID"=>POST("ID")]);
	$rowGEPS = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`supplierID`) as `count` FROM `tblsupplier` WHERE `supplierDBP` = :DBP AND NOT `supplierID` = :ID");
	$result->execute([":DBP"=>POST("DBP"), ":ID"=>POST("ID")]);
	$rowDBP = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`supplierID`) as `count` FROM `tblsupplier` WHERE `supplierTIN` = :TIN AND NOT `supplierID` = :ID");
	$result->execute([":TIN"=>POST("TIN"), ":ID"=>POST("ID")]);
	$rowTIN = $result->fetch();


	$arrayVerify[] = array('message' => 'success', 'Name' => $rowName["count"], 'GEPS' => $rowGEPS["count"], 'DBP' => $rowDBP["count"], 'TIN' => $rowTIN["count"]);

	echo (json_encode($arrayVerify));

?>