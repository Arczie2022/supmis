<?php
    $page_title = 'PPE Ledger Card';
    require_once '../Shared/Master.php';
    function contentBody(){ 
    	PageHeader("Supplies Ledger Card", "3","10px", "30px");
        form("FormSLC", "Generate Form", false, function(){
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownFund.php';
                Select2("Supply", "Supply", "DropDown/DropDownSupply.php", "4");
                Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
                DatePicker("Year", "Year", true, "4");
            });
        });

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    	   ScriptLink("GenerateSLC.js", $parent);
        });
 	}

?>