<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT `returnDate`, `statusDesc`, `returnIsWork`, IFNULL(`returnRemarks`, '') as `returnRemarks`  FROM `tblreturn` INNER JOIN `tblstatus` ON `tblstatus`.`statusNo` = `tblreturn`.`isReturn` AND `tblstatus`.`statusTable` = 'Return'WHERE `reissueID` = :ID");
	$result->execute([":ID" => POST("ID")]);

	while($row = $result->fetch()){
		switch ($row["statusDesc"]) {
			case 'Employee':
				$Description = "Returned to Employee";
				break;
			case 'Reissue to Other Employee':
				$Description = "Reissue to Other Employee";
				break;
			case 'Warehouse':
				$Description = "Stored in Warehouse";
				break;
			case 'Disposed Item':
				$Description = "Disposed";
				break;
			case 'For Disposal Item':
				$Description = "For Disposal";
				break;
			case 'Supply Officer in SPMO':
				$Description = "Returned to Supply Coordinator of the Department";
				break;
			case 'Supply Officer in Department':
				$Description = "Returned to Supply officer of SPMO";
				break;
			case 'For Repair':
				$Description = "For Repair";
				break;
			
			default:
				$Description = "";
				break;
		}
		$IsWork = $row["returnIsWork"] == "1" || $row["returnIsWork"] == 1 ? "Working/Serviceable" : "Not Working/Unserviceable";
		$arrayReturned[] = array("message" => "success", 'Date' => $row["returnDate"], 'Status' => $IsWork, 'Description' => $Description, 'Remarks' => $row["returnRemarks"]);
	}
	jsEncode($arrayReturned);
?>