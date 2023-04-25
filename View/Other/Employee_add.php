<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Add New Employee", "3","20px", "30px");
        form("FormAddEmployee", "Add New Item", false, function(){
            colDiv(function(){
                TextBox("Code", "Code", "text", "3");
                TextBox("Name", "Name", "text", "3");
                TextBox("Position", "Position", "text", "3");
                Select2("Office", "Office", "DropDown/DropDownOffices.php", "3");
            });
            // captcha(true);
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("AddEmployee.js", $parent);
            ScriptLink("VerifyEmployee.js", $parent);
        });
    }
?>
