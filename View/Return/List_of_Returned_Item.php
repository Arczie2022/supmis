<?php
    $page_title = 'List of Returned Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';
        PageHeader("List of Returned Equipment", "4","30px", "30px");
        table("tableListReturn", ["Returned Date", "Employee", "Equipment", "Office", "Status"], ["20%", "20%", "20%", "20%", "20%"]);

        form("FormEquipmentInfo", "", true, function(){
            PageHeader("Equipment Information", "4","20px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                TextBox("Date Returned", "DateReturned", "date", "4", "", "", "disabled");
                TextBox("Date Issued", "DateIssued", "date", "4", "", "", "disabled");
                TextBox("Issuance Type", "IssuanceType", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                TextBox("Issuance Code", "IssuanceCode", "text", "4", "", "", "disabled");
                TextBox("Equipment Code", "EquipmentCode", "text", "4", "", "", "disabled");
                TextBox("Equipment Name", "EquipmentName", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                TextBox("Property Code", "Property", "text", "4", "", "", "disabled");
                TextBox("Barcode", "Serial", "text", "4", "", "", "disabled");
                TextBox("Equipment Description", "EquipmentRemarks", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                SelectHTML("Status", "Status", ["1", "2"], ["Serviceable/Working", "Unserviceable/Not Working"], "4");
                TextBox("Remarks", "Remarks", "text", "4", "", "", "disabled");
            });
            // captcha(true);
            colDiv(function(){
                buttonWoutDIV("Forward to Warehouse", "btnWarehouse", true, " margin-top: 15px !important; margin-bottom: 10px !important;");
                buttonWoutDIV("Return to Supply Coordinator", "btnReturn", true, " margin-right: 1%; margin-left: 1%; margin-top: 15px !important; margin-bottom: 10px !important;");
                buttonWoutDIV("For Disposal", "btnDispose", true, "margin-top: 15px !important; margin-bottom: 10px !important;");
            }, "",  "justify-content: center;");
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("RetrieveReturnItemInSPMO.js", $parent);
            ScriptLink("ListOfReturnedItemInfo.js", $parent);
            ScriptLink("ReturnItemToDepartment.js", $parent);
        });
    }
?>