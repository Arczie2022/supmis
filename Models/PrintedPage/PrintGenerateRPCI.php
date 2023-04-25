<?php
	require '../../Models/Connection/connection_wo_token.php';
	session_start();
	$StartDate = GET("Start");
	$EndDate = GET("End");
	$Fund = GET("Fund");
	$Type = GET("Chart");
	$FundName = GET("FName");
	$TypeName = GET("TName");
	$EndName = GET("EName");
	$StartName = GET("SName");
	$Campus = GET("Campus");

	$countMe = 0;
	
	if ($Campus == "1"){
		$params = array(":StartDate" => $StartDate, ":EndDate" => $EndDate, ":Fund" => $Fund, ":Type" => $Type);
		$result = $db->prepare("SELECT IF(`supplyCode` != '1-', `supplyName` , (IFNULL(`supplyCode`,  SUBSTRING_INDEX(`supplyName`, '(', 1)))) as `Article`, IF(`supplyCode` != '1-','' , (IFNULL(`supplyCode`,  REPLACE(SUBSTRING_INDEX(`supplyName`, '(', -1), ')', '')))) as `Description`, `supplyDesc`, `supplyProperty`, `supplyUnit`, IFNULL(`supplyDesc`, '') as `supplyDesc`, `stockBalance`, `supplyPrice`   FROM `tblstock` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblstock`.`supplyID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblstock`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` WHERE `stockBalance` != 0 AND `fundID` = :Fund AND `chartID_Acc` = :Type AND DATE(`DRDate`) >= DATE(:StartDate) AND DATE(`DRDate`) <= DATE(:EndDate)"); 
	}else{
		$params = array(":StartDate" => $StartDate, ":EndDate" => $EndDate, ":Fund" => $Fund, ":Type" => $Type, ":Campus" => $Campus);
		$result = $db->prepare("SELECT IF(`supplyCode` != '1-', `supplyName` , (IFNULL(`supplyCode`,  SUBSTRING_INDEX(`supplyName`, '(', 1)))) as `Article`, IF(`supplyCode` != '1-','' , (IFNULL(`supplyCode`,  REPLACE(SUBSTRING_INDEX(`supplyName`, '(', -1), ')', '')))) as `Description`, `supplyDesc`, `supplyProperty`, `supplyUnit`, IFNULL(`supplyDesc`, '') as `supplyDesc`, 1 as `stockBalance`, `supplyPrice`  FROM `tblreissuedet` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblreissuedet`.`reissueID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` INNER JOIN `tbloffices` ON `tbloffices`.`officeID` = `tblaccount`.`officeID` INNER JOIN `tblsupplydesc` ON `tblsupplydesc`.`descID` = `tblreissuedet`.`descID` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` INNER JOIN `tblpo` ON `tblpo`.`poID` = `tblstock`.`poID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblsupplydesc`.`supplyID` WHERE `fundID` = :Fund AND `chartID_Acc` = :Type AND DATE(`DRDate`) >= DATE(:StartDate) AND DATE(`DRDate`) <= DATE(:EndDate)  AND `campusID` = :Campus GROUP BY `tblreissuedet`.`descID`"); 
	}
	$result->execute($params);
	while($row = $result->fetch()){
		$arrayRPCI[] = array("Article" => $row["Article"], "Description" => $row["Description"] . "<br/>" . $row["supplyDesc"], "Property" => $row["supplyProperty"], "Unit" => $row["supplyUnit"], "SpecificUnit" => $row["supplyDesc"], "Balance" => $row["stockBalance"], "Price" => $row["supplyPrice"]);
		$countMe++;
	}

	$result = $db->prepare("SELECT `accountPosition`, `campusCode` FROM `tblaccount` INNER JOIN `tbloffices` ON `tblaccount`.`officeID` = `tbloffices`.`officeID` INNER JOIN `tblcampus` ON `tblcampus`.`campusID` = `tbloffices`.`campusID` WHERE `accountID` = :ID"); 
	$result->execute([":ID" => $_SESSION["SUPMIS"]["supmis_ID"]]);
	$row = $result->fetch();
	$Position = $row["accountPosition"];
	$Campus = $row["campusCode"];

	EmptyReports("Start", "Reports/RPCI.php", $arrayRPCI);
	EmptyReports("End", "Reports/RPCI.php", "none");
	EmptyReports("Fund", "Reports/RPCI.php", "none");
	EmptyReports("Chart", "Reports/RPCI.php", "none");
	EmptyReports("FName", "Reports/RPCI.php", "none");
	EmptyReports("TName", "Reports/RPCI.php", "none");
	EmptyReports("EName", "Reports/RPCI.php", "none");
	EmptyReports("SName", "Reports/RPCI.php", "none");

?>