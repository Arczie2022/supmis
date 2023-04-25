<?php
    $page_title = 'List of RIS';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("List of RIS", "3","30px", "30px");
        table("tblListRequestedSupply", ["Requested Date", "RIS Code", "Employee", "Office"], ["25%", "25%", "25%",  "25%"]);

        colDiv(function(){
            PageHeader("List of Requested Supply", "3","20px", "30px");
            table("tblListRequestSupply", ["Quantity", "Unit", "Supply", "Description", "Status", "Remarks"], ["10%", "10%", "20%", "20%", "20%", "20%"]);
        }, "requested",  "hidden");

        form("FormUpdateStatusSupply", "Save", true, function(){
            PageHeader("Supply Information", "3","20px", "30px");
            HiddenTextBox("rowID");
            HiddenTextBox("ID");
            HiddenTextBox("SupplyID");
            HiddenTextBox("Stat");
            HiddenTextBox("risdetID");
            HiddenTextBox("Description");

            colDiv(function(){
                TextBox("Supply", "Supply", "text", "4", "", "", "disabled");
                TextBox("Unit", "Unit", "text", "4", "", "", "disabled");
                TextBox("Estimated Stock", "Stock", "text", "4", "", "", "disabled");
            });

            colDiv(function(){
                TextBox("Requested Quantity", "Quantity", "text", "4", "", "", "disabled");
                TextBox("Quantity to be Issued", "AvailableQuantity", "number", "4");
                TextArea("Remarks", "Remarks", "4");
            });

        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
                ScriptLink("RetrieveListOfRISRequested.js", $parent);
            if($_SESSION["SUPMIS"]["supmis_level"] != "2"){
                ScriptLink("GetListOfSupplyRequestedByRISCode.js", $parent);
                ScriptLink("GetSupplyInformationAndStatus.js", $parent);
                ScriptLink("UpdateSupplyStatus.js", $parent);
            }

        });

    }
?>