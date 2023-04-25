<?php
	require '../../Models/Connection/connection_wo_token.php';
	$result = $db->prepare("SELECT `accountUsername` FROM `tblaccount`");
	$result->execute();
	while($row = $result->fetch()){
		$hash = password_hash($row["accountUsername"], PASSWORD_DEFAULT);
		$resultUpdate = $db->prepare("UPDATE `tblaccount` SET `accountPassword` = :pass WHERE `accountUsername` = :ID");
		$resultUpdate->execute([":pass"=>$hash, ":ID"=>$row["accountUsername"]]);
		echo "ID: " . $row["accountUsername"]."<br>";
		echo "password: " . $hash."<br>";
	}

	

?>