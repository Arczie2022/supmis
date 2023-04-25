<?php
	require '../../Models/Connection/connection_token.php';

	$result = $db->prepare("SELECT COUNT(*) as `count` FROM `tblrisppe` WHERE `risppeCode` = :RISPPE");
	$result->execute([":RISPPE"=>POST("RISPPE")]);
	$rowRISPPE = $result->fetch();

	$result = $db->prepare("SELECT COUNT(*) as `count` FROM `tblpare` WHERE `pareCode` = :PARE");
	$result->execute([":PARE"=>POST("PARE")]);
	$rowPARE = $result->fetch();

	$arrayCode[] = array('PARE' => $rowPARE["count"], 'RISPPE' => $rowRISPPE["count"]);

	echo (json_encode($arrayCode));

?>