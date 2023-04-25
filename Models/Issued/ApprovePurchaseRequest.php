<?php
	require '../../Models/Connection/connection_token.php';
	session_start();
	try{
	    $db->beginTransaction();
		$ID = $_POST["ID"];
		for ($i=0; $i < count($ID); $i++) { 
			$result = $db->prepare("UPDATE `tblpurchase` SET `IsApproved` = :Status, `officerID` = :Officer WHERE `purchaseID` = :ID");
			$result->execute([":Status" => POST("Status"), ":ID" => POST($ID[$i]["ID"], false), ":Officer" => $_SESSION["SUPMIS"]["supmis_ID"]]);
		}

	    $db->commit();
		$arrayApproved[] = array("message" => "success",);
	}
	catch(Exception $e){
	    $db->rollBack();
	    $arrayApproved[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	}

	jsEncode($arrayApproved);
?>