<?php
    $page_title = 'List of Repair Item';
    require_once '../Shared/Master.php';
    function contentBody(){  
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("List of Equipment within Warranty Period", "3","30px", "30px");
        table("tableListRepair", ["Repair Date", "Returned Date", "Employee", "Equipment", "Office"], ["20%", "20%", "20%", "20%", "20%"]);

        form("FormEquipmentInfo", "", true, function(){
            PageHeader("Equipment Information", "3","30px", "30px");
            HiddenTextBox("maxReturn");
            HiddenTextBox("secondMaxReturn");
            HiddenTextBox("reissue");
            colDiv(function(){
                TextBox("Date Forwarded for Repair", "DateRepair", "date", "3", "", "", "disabled");
                TextBox("Date Returned", "DateReturned", "date", "3", "", "", "disabled");
                TextBox("Date Issued", "DateIssued", "date", "3", "", "", "disabled");
                TextArea("Returned Equipment Remarks", "returnRemarks", "3", "disabled");
            }); 
            colDiv(function(){
                TextBox("Issuance Type", "IssuanceType", "text", "3", "", "", "disabled");
                TextBox("Issuance Code", "IssuanceCode", "text", "3", "", "", "disabled");
                TextBox("Responsible Supply Officer", "SupplyOfficer", "text", "3", "", "", "disabled");
                TextBox("Last Issued Employee", "Employee", "text", "3", "", "", "disabled");
            }); 
            colDiv(function(){
                TextBox("Equipment Code", "EquipmentCode", "text", "3", "", "", "disabled");
                TextBox("Equipment Name", "EquipmentName", "text", "3", "", "", "disabled");
                TextArea("Equipment Description", "EquipmentRemarks", "3", "disabled");
                TextBox("Estimated Useful Life", "Life", "text", "3", "", "", "disabled");
            }); 
            colDiv(function(){
                TextBox("Barcode", "Serial", "text", "3", "", "", "disabled");
                TextAccounting("Repair Cost", "Cost", "3");
                TextBox("Cause of Repair", "TypeRepair", "text", "3");
                // SelectHTML("Type of Repair", "TypeRepair", ["Minor", "Major"], ["Minor", "Major"], "3");
                TextArea("Remarks", "Remarks", "3");
            });
            // captcha(true);
            colDiv(function(){
                buttonWoutDIV("Forward to Warehouse", "btnWarehouse", true, " margin-top: 15px !important; margin-bottom: 10px !important;");
                buttonWoutDIV("Return Equipment", "btnReturn", true, " margin-right: 1%; margin-left: 1%; margin-top: 15px !important; margin-bottom: 10px !important;");
                buttonWoutDIV("For Disposal", "btnDispose", true, "margin-top: 15px !important; margin-bottom: 10px !important;");
            }, "", "justify-content: center;");
        });


        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo "RestrictSessionWCoordinator();";
            ScriptLink("RetrieveRepairItem.js", $parent);
            ScriptLink("GetRepairItemInfo.js", $parent);
            ScriptLink("RepairActionButton.js", $parent);
        });
    }
?>