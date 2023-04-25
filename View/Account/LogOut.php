<?php
	session_start();
    unset($_SESSION["SUPMIS"]);
    echo '<script>
    	location.replace("../../index.php");
    </script>';
?>