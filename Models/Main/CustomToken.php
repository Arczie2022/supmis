<?php
    error_reporting(E_ERROR);
    session_start();
    if (empty($_SESSION["SUPMIS"]['SUPMIS'])) {
        if (function_exists('mcrypt_create_iv')) {
            $_SESSION["SUPMIS"]['supmis_token'] = bin2hex(mcrypt_create_iv(32, MCRYPT_DEV_URANDOM));
        } else {
            $_SESSION["SUPMIS"]['supmis_token'] = bin2hex(rand());
        }
    }
?>