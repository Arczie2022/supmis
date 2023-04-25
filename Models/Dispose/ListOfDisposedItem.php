<?php
	require '../../Models/Connection/connection_token.php';
	require_once '../../Models/DropDown/DropDownDisposal.php';

	$result = $db->prepare("SELECT `disposeID`, `disposeDate`, `supplyCode`, `supplyName`, `reissueSerial`, `accountName`, `disposeType`, `disposeCost` FROM `tbldispose` INNER JOIN `tblreissue` ON `tbldispose`.`reissueID` = `tblreissue`.`reissueID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` INNER JOIN `tblaccount` ON `tblaccount`.`accountID` = `tblreissue`.`employeeID` ");
	$result->execute();
	while($row = $result->fetch()){

		foreach ($arrayDisposal as $item) {
			if ($item["Code"] == $row["disposeType"])
				$type = $item["Name"];
		}
		$arrayDisposed[] = array("message" => "success", 'ID' => $row["disposeID"], 'Date' => $row["disposeDate"], 'SupplyCode' => $row["supplyCode"], 'Supply' => $row["supplyName"], 'Serial' => $row["reissueSerial"], 'Employee' => $row["accountName"], 'Cost' => $row["disposeCost"], 'Type' => $type);
	}
	jsEncode($arrayDisposed);
	$result = null;
?>