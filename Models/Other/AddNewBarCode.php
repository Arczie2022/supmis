<?php
    require '../../Models/Connection/connection_wo_token.php';

	$var = $_POST["arr"];
	try{
	    $db->beginTransaction();

		for ($i=0; $i < count($var); $i++) { 
			$result = $db->prepare("INSERT INTO `tblbarcode`(`barCode`) VALUES (:ID);");
			$result->execute([":ID"=>$var[$i]]);
		}

	    $db->commit();

	    $arrBarCode[] = array("message"=>"success");
	}
	catch(Exception $e){
	    $arrBarCode[] = array("message"=>"failed", "error" => $e, "err" => $e->getMessage());
	    $db->rollBack();
	}
	$result = null;
	jsEncode($arrBarCode);

?>