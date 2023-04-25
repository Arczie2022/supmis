<?php
    $page_title = 'Reset Password';
    require_once '../Shared/Master.php';
    function contentBody(){   
        PageHeader("Reset Password", "3","30px", "30px");
        form("FormResetPassword", "", false, function(){
            Select2("Employee", "Employee", "DropDown/DropDownEmployee.php", "5");
            button("btnReset", "Reset Password", "5", "margin-top: 20px; margin-bottom: 15px;");
        }, "5");
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("ResetPassword.js", $parent);
        });
    }
?>