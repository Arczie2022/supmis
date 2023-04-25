<?php
    session_start();
    if($_SESSION["SUPMIS"]["supmis_level"] == 9 || $_SESSION["SUPMIS"]["supmis_level"] == "9" || $_SESSION["SUPMIS"]["supmis_level"] == 10 || $_SESSION["SUPMIS"]["supmis_level"] == "10"){
        require '../../Models/Connection/connection_wo_token.php';
        $result = $db->prepare("SELECT `levelID` FROM `tblaccount` WHERE `accountID` =  :ID");
        $result->execute([":ID"=>$_SESSION["SUPMIS"]["supmis_ID"]]);
        if($row = $result->fetch()){
            $_SESSION["SUPMIS"]["supmis_level"] = $row["levelID"];
        }
    }
    else{
        $code = $_SESSION["SUPMIS"]["supmis_username"];
        if($code == "0010" || $code == "0004" ||  $code == "0537" || $_SESSION["SUPMIS"]["supmis_level"] == "4" || $_SESSION["SUPMIS"]["supmis_level"] == 4)
            $_SESSION["SUPMIS"]["supmis_level"] = "10";
        else
            $_SESSION["SUPMIS"]["supmis_level"] = "9";
    }
    echo "<script>
            location.replace('../../View/Home/HomePage.php');
         </script>";
?>