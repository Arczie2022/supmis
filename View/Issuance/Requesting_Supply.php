<?php
    $page_title = 'Requesting Supply';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Source of Supply", "3","30px", "30px");
        require_once '../../Models/DropDown/DropDownListWarehouse.php';
        Select("Stockroom", "Stockroom", $arrayWarehouse, "ID", "ID", "Name");
        HiddenTextBox("warehouseID");
        colDiv(function(){
            PageHeader("Add New Request of Supplies", "3","0px", "30px");
            form("FormRequestingSupply", "Add Supply", false, function(){
                colDiv(function(){
                    require_once '../../Models/DropDown/DropDownUnits.php';
                    Select2("Supply", "Supply", "DropDown/DropDownSupply.php", "3");
                    SelectHTML("Description", "Specific", [], [], "3");
                    SelectHTML("Estimated Stock", "EstimatedStock", [], [], "2", false, "disabled");
                    TextBox("Quantity", "Quantity", "number", "2");
                    SelectHTML("Unit", "Unit", [], [], "2", false, "disabled");
                });
            }, "12", "btnAddRequest");

            form("FormListSupplyRequested", "Request Supplies", false, function(){
                PageHeader("List of Requested Supplies", "3","30px", "30px");
                table("tblListRequestSupply", ["Supply", "Description", "Quantity", "Unit"], ["25%", "25%", "25%", "25%"]);
                PageHeader("Other Information", "3","0px", "30px");
                colDiv(function(){
                    TextArea("Purpose", "Purpose", "4");
                    SelectHTML("Storage", "Storage", ["0", "1"], ["In Office", "In Stockroom"], "4");
                });
                // captcha(true);
            });
        }, "divRequestStock", 'display: none');

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("ChangeSourceSupply.js", $parent);
            ScriptLink("GetTrueAccessLevelAdmin.js", $parent);
            ScriptLink("ViewAvailableStockBySupplyID.js", $parent);
            ScriptLink("GetDescriptionInRequestSupply.js", $parent);
            ScriptLink("AddItemInRequestedSupplyTable.js", $parent);
            ScriptLink("removeDataInTable.js", $parent);
            ScriptLink("GenerateRequestSupply.js", $parent);
        });
    }
?>
