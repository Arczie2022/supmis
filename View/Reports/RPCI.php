<?php
    $page_title = 'RPCI';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("Filter", "3","30px", "30px");
    	form("FormRPCI", "Generate RPCI", false, function(){
    		colDiv(function(){
                require_once '../../Models/DropDown/DropDownFund.php';
    			require_once '../../Models/DropDown/DropDownListWarehouse.php';
    			Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
    			Select2("Chart of Account", "Chart", "DropDown/DropDownChartOfAccount.php", "4");
                Select("Campus", "Campus", $arrayWarehouse, "ID", "ID", "Name", "4");
    		});
            colDiv(function(){
    			DatePicker("Start Period", "Start", true, "4", true);
    			DatePicker("End Period", "End", true, "4", true);
            });
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("GenerateRPCI.js", $parent);
    	});
	}
?>