<?php
    $page_title = 'List of Requested Supply';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Filter", "3","30px", "30px");
        Search("Year Requested", "RDate", true, 6);

        PageHeader("List of RIS", "3","30px", "30px");
        table("tblListRequestedSupply", ["Requested Date", "RIS Code", "Status"], ["30%", "40%", "30%"]);

        colDiv(function(){
            PageHeader("List of Requested Supply", "3","30px", "30px");
            table("tblListRequestSupply", ["Quantity", "Unit", "Supply", "Status", "Remarks", "ID"], ["20%", "20%", "20%", "20%", "20%", "hidden"]);
            HiddenTextBox("hiddenText");
            button("btnGenerate", "Print Form", "12");
        }, "requested",  "hidden");
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("GetListofRISByEmployeeID.js", $parent);
            ScriptLink("GetListOfSupplyByRISCode.js", $parent);
            ScriptLink("GenerateRISInEmployee.js", $parent);
        });
    }
?>
