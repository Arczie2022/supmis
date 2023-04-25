<?php
    error_reporting(E_ERROR);
    session_start();
	$time = $_SERVER['REQUEST_TIME'];

	$session_timeout = 3600;
	// $token_timeout = 1800;

    if(!empty($_SESSION["SUPMIS"]["SUPMIS"]) && $_SESSION["SUPMIS"]["SUPMIS"] == 'true')
	if (isset($_SESSION["SUPMIS"]['supmis_LAST_ACTIVITY']) && 
	   ($time - $_SESSION["SUPMIS"]['supmis_LAST_ACTIVITY']) > $session_timeout) {
	    echo '<script>alert("440: SESSION EXPIRED - For your security, Your account has been log out as there was no activity for more than 1 hour. "); </script>';
    	unset($_SESSION["SUPMIS"]);
	    session_start();
	    require_once '../../View/Account/LogOut.php';
	}

	// if (($time - $_SESSION["SUPMIS"]['supmis_LAST_ACTIVITY']) > $token_timeout) {
 //        if (function_exists('mcrypt_create_iv')) {
 //            $_SESSION["SUPMIS"]['supmis_token'] = bin2hex(mcrypt_create_iv(32, MCRYPT_DEV_URANDOM));
 //        } else {
 //            $_SESSION["SUPMIS"]['supmis_token'] = bin2hex(rand());
 //        }
	// }
	
	$_SESSION["SUPMIS"]['supmis_LAST_ACTIVITY'] = $time;
	
?>