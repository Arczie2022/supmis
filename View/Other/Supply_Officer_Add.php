<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Update User Role", "3","20px", "30px");
        form("FormAddSupplyOfficer", "Save", false, function(){
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownAccountLevel.php';
                Select2("Employee", "Employee", "DropDown/DropDownEmployee.php", "4");
                Select("User Level", "UserLevel", $arrayUserLevel, "ID", "ID", "Level", "4");
            });
        }, "8");
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("AddSupplyOfficer.js", $parent);
        });
    }
?>