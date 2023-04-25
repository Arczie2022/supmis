<?php
    $page_title = 'History of Returned Item';
    require_once '../Shared/Master.php';
    function contentBody(){  

        PageHeader("Filter", "3","10px", "30px");
        form("FormReturn", "Search", false, function(){
            colDiv(function(){
                DatePicker("Period", "Period", true, "4");
                SelectHTML("Status", "Status", ["1", "2"], ["Working/Serviceable", "Not Working/Unserviceable"], "4");
                Select2("Office", "Office", "DropDown/DropDownOffices.php", "4");
            });
        });
        PageHeader("List of Returned Item", "3","30px", "30px");
        table("tblReturn", ["Employee", "Office", "Equipment", "Barcode", "Property Number"], ["20%", "20%", "20%", "20%", "20%"]);

        PageHeader("History of Returned Item", "3","30px", "30px");
        table("tblHistory", ["Date Returned", "Description", "Status", "Remarks"], ["25%", "25%", "25%", "25%"]);

        // button("btnGenerate", "Generate Report");

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("RetrieveListOfReturnItemByPeriod.js", $parent);
            ScriptLink("GetHistoryReturnEquipmentByReissue.js", $parent);
        });
    }
?>