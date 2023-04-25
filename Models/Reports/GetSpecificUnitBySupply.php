<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT IFNULL(`supplyDesc`, 'No Description') as `Specific` FROM `tblsupplydesc` WHERE `supplyID` = :Supply AND `supplyUnit` = :Unit GROUP BY `supplyDesc`");
	$result->execute([":Supply" => POST("Supply"), ":Unit" => POST("Unit")]);

	while($row = $result->fetch()){
		$arraySpecific[] = array("message" => "success", 'Specific' => $row["Specific"]);
	}

	jsEncode($arraySpecific);
?>