<?php
    error_reporting(E_ERROR);
    session_start();
    require_once '../../Models/Main/PostMethod.php';
    require_once '../../Models/Main/GetMethod.php';
    require_once '../../Models/Main/jsonEncode.php';

    if (hash_equals($_SESSION["SUPMIS"]['supmis_token'], POST('cnsc_supmis')) && !empty(POST('cnsc_supmis'))) {
        require_once '../../Models/Main/methodStrToArr.php';
        require_once '../../Models/Main/CustomTimeout.php';
        date_default_timezone_set('ASIA/MANILA');
        if(!empty($_SESSION["SUPMIS"]["SUPMIS"]) || !empty(POST("level"))){
            $dbname = "supmisdbv4";
            $host = "localhost";
            $user = "root";
            $user = "root";
            $pass = "";
            $pass = "123412341234";

            $dsn = "mysql:host=".$host.";dbname=".$dbname.";charset=utf8mb4";
            $options = [
                PDO::ATTR_EMULATE_PREPARES => false, 
                // turn off emulation mode for "real" prepared statements
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
                //turn on errors in the form of exceptions
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, 
                //make the default fetch be an associative array
            ];
            try {
                $db = new PDO($dsn, $user, $pass, $options);
            } 
            catch (Exception $e) {
                jsEncode([array("message" => "Connection Error")]);
                die();
            }
        }
        else{
            jsEncode([array("message" => "Session Timeout")]);
            die();
        }
    } 
    else {
        jsEncode([array("message" => "Request Timeout", "hash" => hash_equals($_SESSION["SUPMIS"]['supmis_token'], POST('cnsc_supmis')), "session" => $_SESSION["SUPMIS"]['supmis_token'], "POST" => POST('cnsc_supmis'), "try" => $_SESSION["SUPMIS"]["abc"]   )]);
        die();
    }
?>