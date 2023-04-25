<?php
	require '../../Models/Connection/connection_token.php';
	session_start();

	$obj = $_POST["Row"];
    $dateRequest =  date("Y-m-d");

    try{
        $db->beginTransaction();

	    for ($i = 0; $i < count($obj); $i++){
	    	$ID = POST($obj[$i]["ID"], false);
	    	$descID = POST($obj[$i]["descID"], false);
	    	$Parts = POST($obj[$i]["Parts"], false);

			$params = array(":ID"=> $ID, ":Parts"=> $Parts, ":dateRequest"=> $dateRequest, ":remarks"=> POST("Remarks"), ":cost"=> POST("Cost"), ":type"=> POST("Type"), ":officer"=> $_SESSION["SUPMIS"]['supmis_ID'],  ":no"=> $_SESSION["SUPMIS"]['supmis_ID'], ":Receipt" => POST("Receipt"), ":ReceiptDate" => POST("ReceiptDate"), ":Agency" => POST("Agency"));
			$result = $db->prepare("UPDATE `tbldisposeparts` SET `disposepartsDate`= :dateRequest,`disposepartsDesc`= :Parts,`disposepartsCost`= :cost,`disposepartsType`= :type,`disposepartsReceipt`= :Receipt,`disposepartsRDate`= :ReceiptDate,`disposepartsAgency`= :Agency,`disposepartsRemark`= :remarks,`officerID`= :officer,`no`= :no WHERE `disposepartsID` = :ID");
			$result->execute($params);

	   		if($result->rowCount() == 0 || $result->rowCount() == "0")
	    		throw new Exception("insert Failed");
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