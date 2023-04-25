<?php
    $page_title = 'List of Employees';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	require_once '../../Models/DropDown/DropDownCampus.php';
        PageHeader("Filter", "3","30px", "30px");
        Select("Campus", "Campus", $arrayCampus, "ID", "ID", "Name+Code", "5");
        PageHeader("List of Employees", "3","30px", "30px");
        table("tblListEmployee", ["Code", "Description", "Office"], ["25%", "40%", "35%"]);
        form("FormUpdateEmployee", "Update Information", true, function(){
            HiddenTextBox("ID");
            PageHeader("Employee Information", "3","30px", "30px");
            colDiv(function(){
                TextBox("Code", "Code", "text", "3", "", "", "disabled");
                TextBox("Name", "Name", "text", "3");
                TextBox("Position", "Position", "text", "3");
                Select2("Office", "Office", "DropDown/DropDownOffices.php", "3");
            });
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("RetrieveEmployee.js", $parent);
            if($_SESSION["SUPMIS"]["supmis_level"] == "1" || $_SESSION["SUPMIS"]["supmis_level"] == "3"){
                ScriptLink("GetEmployee.js", $parent);
                ScriptLink("VerifyEmployee.js", $parent);
                ScriptLink("UpdateEmployee.js", $parent);
            }
        });
    }
?>