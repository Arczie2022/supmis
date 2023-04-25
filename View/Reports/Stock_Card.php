<?php
    $page_title = 'Stock Card';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("Filter", "3","0", "30px");
    	form("FormStockCard", "Generate Stock Card", false, function(){
	    	colDiv(function(){
	    		Select2("Supply", "Supply", "DropDown/DropDownSupply.php", "4");
                SelectHTML("Unit", "Unit", [], [], "4");
                SelectHTML("Specific Measurement", "Description", [], [], "4");
	    	});
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownFund.php';
                require_once '../../Models/DropDown/DropDownListWarehouse.php';
                Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
                DatePicker("Year", "Year", true, "4");
                Select("Campus", "Campus", $arrayWarehouse, "ID", "ID", "Name", "4");
            });
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("ChangeStockValue.js", $parent);
            ScriptLink("GenerateStockCard.js", $parent);
    	});
	}
?>
