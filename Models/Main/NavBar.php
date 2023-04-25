<?php
	require_once 'methodStrToArr.php';
	function MainMenu($div, $limit, $callback = "", $notif = false){
        $level = $_SESSION["SUPMIS"]["supmis_level"];
        if(in_array($level, StrToArr($limit, ",", ""))){
            echo '
            	<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle dropdown-item" data-toggle="dropdown">'.$div.notifBadge($notif).'</a>
                    <ul class="dropdown-menu">
        	';
            $callback();
            echo '</ul></li>';

        }else{
            echo '<li class="nav-item dropdown" hidden></li>';
        }
    }

    function SubMenu($div, $limit, $callback = "", $notif = false){
        $level = $_SESSION["SUPMIS"]["supmis_level"];
        if(in_array($level, StrToArr($limit, ",", ""))){
            echo '
            	<li class="dropdown-submenu">
                    <a class="dropdown-item dropdown-toggle">'.$div.notifBadge($notif).'</a>
                    <ul class="dropdown-menu">
            ';
            $callback();
            echo '</ul></li>';
        }else{
            echo '<li class="dropdown-submenu" hidden></li>';
        }
    }

    function ItemMenu($link, $div, $limit, $tip = "", $notif = false){
    	$level = $_SESSION["SUPMIS"]["supmis_level"];
        if(in_array($level, StrToArr($limit, ",", ""))){
            if ($tip == ""){
                echo '<li><a class="dropdown-item" href="../../' . $link . '">'.$div.notifBadge($notif).'</a></li>';
            }else{
                echo '<li><a class="dropdown-item" href="../../' . $link . '"title="'.$tip.'" data-toggle="tooltip" data-placement="right" >'.$div.notifBadge($notif).'</a></li>';
            }
        }
    }
    function navHR(){
        echo '<hr class="hr-navbar">';
    }
    function notifBadge($boolNotif){
        session_start();
        $level = $_SESSION["SUPMIS"]["supmis_level"];
        if($boolNotif || $boolNotif == "true")
            if ($level != "7" && $level != "8" && $level != "9" && $level != "0" && $level != "2" && $level != "10" )
                return '<span class="badge badge-pill badge-danger badge-custom">*</span>';
    }
?>