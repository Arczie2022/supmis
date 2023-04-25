<?php
	require '../../Models/Connection/connection_token.php';
	session_start();
	$hash = password_hash(POST("password"), PASSWORD_DEFAULT);
	$result = $db->prepare("UPDATE `tblaccount` SET `accountPassword` = :pass WHERE `accountID` = :ID");
	if($result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"],":pass"=>$hash])){
        $_SESSION["SUPMIS"]["supmis_default"] = "false"; 
		$arrayPassword[] = array('message' => 'success');
	}
	else
		$arrayPassword[] = array('message' => 'Connection Error');

	echo (json_encode($arrayPassword));

?>