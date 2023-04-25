<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$obj = $_POST["Row"];
    $dateRequest =  date("Y-m-d");

    try{
        $db->beginTransaction();

	    for ($i = 0; $i < count($obj); $i++){
	    	$ID = POST($obj[$i]["ID"], false);

			$params = array(":ID"=> $ID, ":dateRequest"=> $dateRequest, ":remarks"=> POST("Remarks"), ":cost"=> POST("Cost"), ":receipt"=> POST("Receipt"), ":type"=> POST("Type"), ":officer"=> $_SESSION["SUPMIS"]['supmis_ID'],  ":no"=> $_SESSION["SUPMIS"]['supmis_ID']);
			$result = $db->prepare("INSERT INTO `tbldispose`(`reissueID`, `disposeDate`, `disposeCost`, `disposeReceipt`, `disposeType`, `disposeRemark`, `officerID`, `no`) VALUES (:ID, :dateRequest, :cost, :receipt, :type, :remarks, :officer, :no)");
			$result->execute($params);

	   		if($result->rowCount() == 0 || $result->rowCount() == "0")
	    		throw new Exception("insert Failed 1");

			$params = array(":ID"=> POST($obj[$i]["returnID"], false), ":dateRequest"=> $dateRequest, ":Officer"=> $_SESSION["SUPMIS"]["supmis_ID"], ":no"=> $_SESSION["SUPMIS"]["supmis_ID"]);

			$result = $db->prepare("INSERT INTO `tblreturn`(`reissueID`, `isReturn`, `returnDate`, `returnIsWork`, `returnRemarks`, `officerID`, `no`) SELECT `reissueID`, 4, :dateRequest, `returnIsWork`, `returnRemarks`, :Officer, :no FROM `tblreturn` WHERE `returnID` = :ID");
			$result->execute($params);

			if($result->rowCount() == 0 || $result->rowCount() == "0")
	    		throw new Exception("insert Failed 2 " . POST($obj[$i]["returnID"], false));
	    	
	    }
		
        $db->commit();
		$arrayDisposed[] = array('message' => 'success');
    }
    catch(Exception $e){
		$arrayDisposed[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
        $db->rollBack();
    }

    echo (json_encode($arrayDisposed));

?>