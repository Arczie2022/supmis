<?php
    $page_title = 'List of Offices';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("List of Offices", "3","30px", "30px");
        table("tblListOffice", ["Code", "Description", "Campus"], ["30%", "40%", "30%"]);

        form("FormUpdateOffice", "Update Information", true, function(){
            PageHeader("Office Information", "3","20px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownCampus.php';
                TextBox("Code", "Code", "text", "4");
                TextBox("Name", "Name", "text", "4");
                Select("Campus", "Campus", $arrayCampus, "ID", "ID", "Name+Code", "4");
            });
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'RestrictSession();';
            ScriptLink("RetrieveOffice.js", $parent);
            ScriptLink("GetOffice.js", $parent);
            ScriptLink("VerifyOffice.js", $parent);
            ScriptLink("UpdateOffice.js", $parent);
        });
    }
?>