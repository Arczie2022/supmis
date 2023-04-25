<?php
    error_reporting(E_ERROR);
    $dbname = "supmisdbv4";
    $user = "root";
    $user = "root";
    $pass = "";
    $pass = "123412341234";
        
    require_once '../../Models/Main/jsonEncode.php';
    require_once '../../Models/Main/PostMethod.php';
    require_once '../../Models/Main/GetMethod.php';
    require_once '../../Models/Main/methodStrToArr.php';
    require_once '../../Models/Main/EmptyReports.php';
    date_default_timezone_set('Asia/Manila');
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
        echo $e;
        die();
    }
?>