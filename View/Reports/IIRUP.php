<?php
    $page_title = 'Inventory and Inspection Report of Unserviceable Property';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("Filter", "3","0", "30px");
    	form("FormIIRUP", "Generate IIRUP", false, function(){
	    	colDiv(function(){
                require_once '../../Models/DropDown/DropDownFund.php';
                TextBox("Period (Start)", "Start", "date", "4");
                TextBox("Period (End)", "End", "date", "4");
                Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");

            });
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("GenerateIIRUP.js", $parent);
    	});
	}
?>
