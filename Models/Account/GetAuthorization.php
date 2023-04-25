<?php 
    session_start();
    require '../../Models/Connection/connection_token.php';
    $user = POST("username");
    $pass = POST("password");
    $result = $db->prepare("SELECT `accountID`, `levelID`, `accountName`, `accountPassword`FROM `tblaccount` WHERE `accountUsername` = :user");
    $result->execute([":user"=>$user]);

    $row = $result->fetch();    
    if($row["accountID"] != "" && $row["accountID"] != 0){
        if (password_verify($pass, $row["accountPassword"])){
            session_start();

            $_SESSION["SUPMIS"]["SUPMIS"] = 'true';
            $_SESSION["SUPMIS"]["supmis_username"] = POST("username");
            $_SESSION["SUPMIS"]["supmis_ID"] = $row["accountID"];
            $_SESSION["SUPMIS"]["supmis_level"] = $row["levelID"];
            $_SESSION["SUPMIS"]["supmis_name"] = strtoupper($row["accountName"]);
            
            $LogRemarks = strtoupper($row["accountName"])." has been login";
            $params = array(':Remarks' => $LogRemarks, ':Officer' => $_SESSION["SUPMIS"]["supmis_ID"], ':Employee' => "0", ':ViewAccess' => '1,2,', ':Encoder' => $_SESSION["SUPMIS"]["supmis_ID"]);
            $result = $db->prepare("INSERT INTO `tbllogs`(`logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `no`) VALUES (:Remarks, :Officer, :Employee, 1, 0, :ViewAccess, :Encoder);");
            $result->execute($params);

            if($pass == $user){
                $_SESSION["SUPMIS"]["supmis_default"] = "true"; 
                jsEncode([array("message" => "Default")]);
            }
            else{
                $gotoHere = hex2bin(POST("gotoHere"));
                $gotoHere = $gotoHere == "" ? "../../View/Home/HomePage.php" : $gotoHere;
                jsEncode([array("message" => "success", "link" => $gotoHere)]);
            }
        }
        else{
            jsEncode([array("message" => "xpass")]);
        }
    }
    else{
        jsEncode([array("message" => "xuser")]);
    }
    $result = null;    
 ?>