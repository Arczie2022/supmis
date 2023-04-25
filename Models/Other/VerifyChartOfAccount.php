<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(`chartID`) as `count` FROM `tblchartaccount` WHERE `chartCode` = :Code AND NOT `chartID` = :ID");
	$result->execute([":Code"=>POST("Code"), ":ID"=>POST("ID")]);
	$rowCode = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`chartID`) as `count` FROM `tblchartaccount` WHERE `chartName` = :Name AND NOT `chartID` = :ID");
	$result->execute([":Name"=>POST("Name"), ":ID"=>POST("ID")]);
	$rowName = $result->fetch();

	$result = $db->prepare("SELECT COUNT(`chartID`) as `count` FROM `tblchartaccount` WHERE `chartLegend` = :Legend AND NOT `chartID` = :ID");
	$result->execute([":Legend"=>POST("Legend"), ":ID"=>POST("ID")]);
	$rowLegend = $result->fetch();


	$arrayVerify[] = array('message' => 'success', 'Code' => $rowCode["count"], 'Name' => $rowName["count"], 'Legend' => $rowLegend["count"]);

	echo (json_encode($arrayVerify));

?>