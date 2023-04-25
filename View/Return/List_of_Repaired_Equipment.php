<?php
    $page_title = 'List of Repaired Equipment';
    require_once '../Shared/Master.php';
    function contentBody(){  
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("Records of Repaired Equipment", "3","20px", "30px");

        table("tableListRepaired", ["Equipment", "Serial", "Start Date", "End date", "Employee", "Responsible Officer"], ["20%", "14%", "13%", "13%", "20%", "20%"]);
        colDiv(function(){
            PageHeader("Equipment Information", "3","0px", "30px");
            colDiv(function(){
                TextBox("Issuance Code", "IssueCode", "text", "4", "", "", "disabled");
                TextBox("Date of Issued", "IssueDate", "text", "4", "", "", "disabled");
                TextBox("Date of Reissued", "Reissuedate", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                TextBox("Code", "EquipmentCode", "text", "4", "", "", "disabled");
                TextBox("Equipment", "Equipment", "text", "4", "", "", "disabled");
                TextBox("Serial", "Serial", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                TextBox("Employee", "Employee", "text", "4", "", "", "disabled");
                TextBox("Responsible Officer", "SupplyOfficer", "text", "4", "", "", "disabled");
                TextBox("Type of Repair", "RepairType", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                TextBox("Start Date of Repair", "StartDate", "text", "4", "", "", "disabled");
                TextBox("End Date of Repair", "Enddate", "text", "4", "", "", "disabled");
                TextBox("Repair Cost", "Cost", "text", "4", "", "", "disabled");
            });
        }, "divEquipInfo",  "hidden");

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo "RestrictSessionWCoordinator();";
            ScriptLink("RetrieveAllRepairedItem.js", $parent);
            ScriptLink("GetRepairedEquipmentInfo.js", $parent);
        });
    }
?>