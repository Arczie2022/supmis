<?php
    $page_title = 'RSMI';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("Filter", "3","10px", "30px");
    	form("FormRSMI", "Generate RSMI", false, function(){
    		colDiv(function(){
                require_once '../../Models/DropDown/DropDownFund.php';
    			require_once '../../Models/DropDown/DropDownListWarehouse.php';
    			Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
    			DatePicker("Date", "Date", true, "4", true);
                Select("Campus", "Campus", $arrayWarehouse, "ID", "ID", "Name", "4");
    		});
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("GenerateRSMI.js", $parent);
    	});
	}
?>