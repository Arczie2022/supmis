<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Update Employee Office", "3","20px", "30px");
        form("FormSupplyOfficer", "Save", false, function(){
            colDiv(function(){
                Select2("Employee", "Employee", "DropDown/DropDownEmployee.php", "5");
                Select2("Office", "Office", "DropDown/DropDownOffices.php", "5");
            });
        }, "10");
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("UpdateOfficeByEmployee.js", $parent);
        });
    }
?>