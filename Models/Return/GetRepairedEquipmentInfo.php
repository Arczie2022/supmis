<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT IFNULL(`pareCode`, `icsCode`) as `issuanceCode`, IFNULL(`icsDate`, `pareDateRequest`) as `issueDate`, `reissueDate`, `supplyCode`, (select CONCAT(`repairCost`, '@', `repairType`) FROM `tblreturn` WHERE  `returnID` = (SELECT MIN(`returnID`) FROM `tblreturn` WHERE `reissueID` = `tblret`.`reissueID` AND `returnID` > :subID)) as `TypeANDCost` FROM `tblreturn` `tblret` INNER JOIN `tblreissue` ON `tblreissue`.`reissueID` = `tblret`.`reissueID` INNER JOIN `tblsupply` ON `tblsupply`.`supplyID` = `tblreissue`.`supplyID` LEFT JOIN `tblicsdet` ON `tblicsdet`.`icsdetID` = `tblreissue`.`icsdetID` LEFT JOIN `tblics` ON `tblics`.`icsID` = `tblicsdet`.`icsID` LEFT JOIN `tblparedet` ON `tblparedet`.`paredetID` = `tblreissue`.`paredetID` LEFT JOIN `tblpare` ON `tblpare`.`pareID` = `tblparedet`.`pareID` WHERE `returnID` = :ID");
	$result->execute([":ID" => POST("ID"), ":subID" => POST("ID")]);

	while($row = $result->fetch()){
		$Type = explode("@", $row["TypeANDCost"])[1];
		$Cost = explode("@", $row["TypeANDCost"])[0];
		$arrayRepaired[] = array("message" => "success", 'issuanceCode' => $row["issuanceCode"], 'issueDate' => $row["issueDate"], 'reissueDate' => $row["reissueDate"], 'supplyCode' => $row["supplyCode"], 'repairType' => $Type, 'repairCost' => $Cost );
	}

	jsEncode($arrayRepaired);
?>