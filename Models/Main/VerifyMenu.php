<?php
	require '../../Models/Connection/connection_wo_token.php';
	$result = $db->prepare("SELECT  `menuID`, `menuAccess` FROM `tblmenu` WHERE `menuDesc` = :ID");
	$result->execute([":ID"=>$page_title]);
	if($row = $result->fetch()){
		$arrayMenu[] = array('ID' =>  $row["menuID"],'accessLevel' =>  $row["menuAccess"]);
	}
	$result = null;
    
?>