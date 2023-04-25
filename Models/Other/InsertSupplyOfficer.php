<?php
    require '../../Models/Connection/connection_token.php';
    
    session_start();
    try{
        $db->beginTransaction();
    
	    $result = $db->prepare("UPDATE `tblaccount` SET `levelID` = :UserLevel, `no` = :no WHERE `accountID` = :Employee");
	    
	    $result->execute([":Employee" => POST("Employee"), ":UserLevel" => POST("UserLevel"), ":no" => $_SESSION["SUPMIS"]['supmis_ID']]);

   		if($result->rowCount() != 0 && $result->rowCount() != "0"){
   			$result = $db->prepare("INSERT INTO `tblofficerrecord`(`accountID`, `fromLevel`, `toLevel`, `No`) VALUES (:ID, :old, :new, :no);");
   			$result->execute([":ID" => POST("Employee"), ":old" => POST("oldLevel"), ":new" => POST("UserLevel"), ":no" => $_SESSION["SUPMIS"]['supmis_ID']]);
   		}

        $db->commit();
        $arrayInsert[] = array('message' => 'success');
    }
    catch(Exception $e){
        $db->rollBack();
        $arrayInsert[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
    }
    echo (json_encode($arrayInsert));

    $result = null;
?>