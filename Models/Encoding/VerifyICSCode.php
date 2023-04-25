<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(*) as `count` FROM `tblrisppe` WHERE `risppeCode` = :RISPPE");
	$result->execute([":RISPPE"=>POST("RISPPE")]);
	$rowRISPPE = $result->fetch();

	$result = $db->prepare("SELECT COUNT(*) as `count` FROM `tblics` WHERE `ICSCode` = :ICS");
	$result->execute([":ICS"=>POST("ICS")]);
	$rowICS = $result->fetch();

	$arrayCode[] = array('ICS' => $rowICS["count"], 'RISPPE' => $rowRISPPE["count"]);

	echo (json_encode($arrayCode));

?>