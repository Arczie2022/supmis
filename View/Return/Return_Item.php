<?php
    $page_title = 'Return Item';
    require_once '../Shared/Master.php';
    function contentBody(){  
        require_once '../../Models/Main/SessionScript.php';
        PageHeader("List of Returned Item", "3","30px", "30px");
        table("tableListReturn", ["Date Returned", "Employee", "Equipment", "Office", "Status"], ["20%", "20%", "20%", "20%", "20%"]);

        form("FormEquipmentInfo", "Forward/Return", true, function(){
            PageHeader("Equipment Information", "3","30px", "30px");
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
                TextArea("Equipment Description", "EquipmentRemarks", "4", "disabled");
            }); 
            colDiv(function(){
                SelectHTML("Status", "Status", ["1", "2"], ["Serviceable/Working", "Unserviceable/Not Working"], "4");
                TextBox("Reasons", "Remarks", "text", "4", "", "", "disabled");
                SelectHTML("Forward/Return to", "Forward", ["1", "3", "4", "5"], ["Return to Employee", "Store in Warehouse", "Forward to SPMO-Main", "Forward for Repair"], "4");
            }); 
            // captcha(true);
        });

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo "RestrictSession();";
            ScriptLink("RetrieveReturnItemInSCoor.js", $parent);
            ScriptLink("ListOfReturnedItemInfo.js", $parent);
            ScriptLink("UpdateReturnInfo.js", $parent);

        });
    }
?>