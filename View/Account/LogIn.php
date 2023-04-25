<!DOCTYPE html>
<html>
<head>
    <title>Camarines Norte State College</title>
    <?php 
        error_reporting(E_ERROR);
        
        require_once '../../Models/Main/SessionSecure.php';
        // session_regenerate_id(true);        
        session_start();
        if(!empty($_SESSION["SUPMIS"]["SUPMIS"]) && $_SESSION["SUPMIS"]["SUPMIS"] == 'true'){
            echo '<script>location.replace("../../View/Home/homepage.php");</script>';
        }
        require_once '../../View/Shared/Initialization.php';
        
    ?>
</head>
<link rel="stylesheet" type="text/css" href="../../Content/LogInDesign.css">
<body >
    <?php
    ?>
    <div class="login-form">
       
    <form id = "LogInForm" method="post">
        <textarea id = "gotoHere" name = "gotoHere" hidden><?php echo $_GET["target"]; ?></textarea>
        <input type="hidden" name="cnsc_supmis" id="cnsc_supmis" value="<?php echo ($_SESSION["SUPMIS"]["supmis_token"]);?>">
        <div  class="text-center" style="margin-top: 10px">
            <div style = "font-size: 17.5px; font-weight: bold; text-transform: uppercase;">Supply and Property <div style="font-size: 15px; "> Management Information System</div></div>       
        </div>
        <div class="form-group" style="margin-top: 40px !important;padding-right: 4%; padding-left: 4%">
            <input type="text"  class="form-control" placeholder="Username" id = "username" name = "username" >
        </div>
        <div class="form-group" style="padding-right: 4%; padding-left: 4%">
            <input type="password" class="form-control" placeholder="Password" id = "password" name = "password" >
        </div>
        <div class="form-group">
            <select class="form-control" id = "level" name = "level" hidden>
                <option value = "Administrator" selected>Administrator</option>
                <option value = "Instructor">Instructor</option>
                <option value = "Student">Student</option>
                <option value = "Alumni">Alumni</option>
            </select>
        </div>
        <div class="form-group" style="margin-left: 6%">
        <?php //captcha(); ?>
        </div>
        <div class="" style="text-align: center; margin-bottom: 10px; margin-top: 20px !important">
            <input id = "btnLogin" type="submit" class="btn btn-outline-maroon"  value="LOG IN" style="padding-top: 12px; padding-bottom: 12px;" />
        </div>
        <div class = "input-group" id = "divPreference" hidden>
        <hr style="background-color: goldenrod">
        <div class = "col-lg-6" style="font-size: 14px; font-weight: 600; padding-top: 2%">PREFERENCE:</div>
         <div class="form-group" style="display: inline-block;">
            <select id = "color" name = "color" class="form-control" style="font-size: 12px !important">
                <option selected disabled>Background Color</option>
                <option value = "#203354">Blue</option>
                <option value = "maroon">Maroon</option>
                <option value = "#FFCC00">Yellow</option>
                <option value = "#FF1493">Pink</option>
                <option value = "#6B8E23">Green</option>
                <option value = "#5A005A">Violet</option>
                <option value = "#B28DFF">Purple</option>
                <option value = "#cc3700">Orange</option>
            </select>
        </div> 
        </div>    
    </form>
</div>
<script type="text/javascript">
    $('#color').on('change', function(){
        setCookie('pbc', $('#color').val(), 7);
        setCookie('text_pbc', $('#color  option:selected').text(), 7);

        var root = document.documentElement;
        root.style.setProperty('--primary_background_color', getCookie('pbc'));

    });
</script>
<script>
    $.getScript("../../Scripts/Account/LogIn.js");
</script>
</body>
</html>