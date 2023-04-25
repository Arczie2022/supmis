<?php
    $page_title = 'Requesting for Purchase';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Add New Request", "3","0px", "30px");
        form("FormRequest", "Add New Request", false, function(){
            colDiv(function(){
                Select2("Equipment", "Equipment", "DropDown/DropDownSupply.php", "4");
                TextArea("Specs/Description", "Description", "4");
                TextArea("Purpose", "Purpose", "4");
            });
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownUnits.php';
                Select("Unit", "Unit", $arrayUnit, "name", "name", "name", "4");
                SelectHTML("New", "New", ["1", "0"], ["For Replacement Parts", "New Set of Equipment"], "4");
                Select2("Serial of Equipment", "Serial", "DropDown/DropDownPropertyInEmp.php", "4", false, "disabled");
            });
            colDiv(function(){
                TextBox("Quantity", "Quantity", "number", "4");
                TextAccounting("Estimated Budget", "Budget", "4");
                TextAccounting("Total", "Total", "4", "disabled");
            });
        });
        PageHeader("List of Equipment to be Requested", "3","30px", "20px");
        table("ListRequest", ["Equipment", "Description", "Type", "Serial", "Quantity", "Price"], ["20%", "20%", "15%", "20%", "10%", "15%"]);
        button("btnSave", "Forward Request", "12");
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("AddRequestPurchase.js", $parent);
            ScriptLink("ChangeTypeInRequestPurchase.js", $parent);
            ScriptLink("calculatePrice.js", $parent);
            ScriptLink("Requesting_Purchase.js", $parent);
        });
    }
?>
