<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	try{
	    $db->beginTransaction();
	
	    $dateReturned =  date("Y-m-d");

		$params = array(":ID"=> POST("ID"), ":ReturnDate"=> $dateReturned, ":Work"=> POST("Status"), ":Reason"=> POST("Reason"), ":no" => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tblreturn`(`reissueID`, `isReturn`, `returnDate`, `returnIsWork`, `returnRemarks`, `no`) VALUES (:ID, 1, :ReturnDate, :Work, :Reason, :no)");
		$result->execute($params);

		$result = $db->prepare("UPDATE `tblreissue` SET `reissueStatus` = 1 WHERE `reissueID` = :ID");
		$result->execute([":ID" => POST("ID")]);

	    $db->commit();
		$arrayReturn[] = array('message' => 'success');
	}
	catch(Exception $e){
		$arrayReturn = [];
		$arrayReturn[] = array("message" => "Connection Error", "error" => $e, "err" => $e->getMessage());
	    $db->rollBack();
	}

	echo (json_encode($arrayReturn));

	$result = null;
?>