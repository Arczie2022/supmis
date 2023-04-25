<?php
	require '../../Models/Connection/connection_token.php';

	session_start();

	try{
	    $db->beginTransaction();
		
		$params = array(':PONo' => POST("PONo"), ':DatePayment' => POST("DatePayment"), ':CheckNo' => POST("CheckNo"), ':TypePayment' => POST("TypePayment"), ':Amount' => POST("Amount"), ':Tax' => POST("Tax"), ':Liquidated' => POST("Liquidated"), ":no" => $_SESSION["SUPMIS"]["supmis_ID"], ":ID" => POST("PONo"), ":subID" => POST("PONo"), ":Total" => (floatval(POST("Amount")) + floatval(POST("Tax")) + floatval(POST("Liquidated"))));
		$result = $db->prepare("INSERT INTO `tblpayment`(`paymentReceipt`, `paymentDate`, `paymentType`, `poID`, `paymentAmount`, `paymentTax`, `paymentLiquidate`, `No`) (SELECT :CheckNo, :DatePayment, :TypePayment, :PONo, :Amount, :Tax, :Liquidated, :no WHERE (SELECT (SELECT SUM(`supplyPrice`*`stockAvailable`) FROM `tblsupplydesc` INNER JOIN `tblstock` ON `tblstock`.`descID` = `tblsupplydesc`.`descID` WHERE `poID` = :subID) - (IFNULL((SUM(`paymentAmount`) + SUM(`paymentTax`) + SUM(`paymentLiquidate`)), 0) + :Total) as `stock` FROM `tblpo` LEFT JOIN `tblpayment` ON `tblpayment`.`poID` = `tblpo`.`poID` WHERE `tblpo`.`poID` = :ID GROUP BY `tblpo`.`poID`)>=0 )"); 
		$result->execute($params);

		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('No Stock Available');

		$result = $db->prepare("SELECT `poCode` FROM `tblpo` WHERE `poID` = :ID");
		$result->execute([":ID" => POST("PONo")]);
		$row = $result->fetch();
		$POCode = $row["poCode"];

		$LogRemarks = $POCode . " has added Payment (" . POST("CheckNo"). " dated " . POST("DatePayment") . " with the amount of P ". (floatval(POST("Amount")) + floatval(POST("Tax")) + floatval(POST("Liquidated"))) .")";

		$params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,6,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
		$result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 2, 0, :ViewAccess, :Encoder);");
		$result->execute($params);
		if($result->rowCount() == 0 || $result->rowCount() == "0")
			throw new Exception('Log Error');

	    $db->commit();
	    $arrayPayment[] = array("message" => "success");
	}
	catch(Exception $e){
		if ($e->getMessage() == "No Stock Available"){
            $arrayPayment[] = array('message' => 'Balance of PONo', "total" => (floatval(POST("Amount")) + floatval(POST("Tax")) + floatval(POST("Liquidated"))));
        }else{
            $arrayPayment[] = array('message' => 'Connection Error', "error" => $e, "err" => $e->getMessage());
        }
	    $db->rollBack();
	}
	jsEncode($arrayPayment);
?>