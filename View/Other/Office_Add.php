<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){
        PageHeader("Add New Office", "3","20px", "20px");

        form("FormAddOffice", "Add New Information", false, function(){
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownCampus.php';
                TextBox("Code", "Code", "text", "4");
                TextBox("Name", "Name", "text", "4");
                Select("Campus", "Campus", $arrayCampus, "ID", "ID", "Name+Code", "4");
            });
        });

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("AddOffice.js", $parent);
            ScriptLink("VerifyOffice.js", $parent);
        });
    }
?>