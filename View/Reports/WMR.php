<?php
    $page_title = 'Waste Material Reports';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("Filter", "3","0", "30px");
    	form("FormWMR", "Generate WMR", false, function(){
            colDiv(function(){
                require_once '../../Models/DropDown/DropDownFund.php';
                DatePicker("Period", "Period", true, "4");
                Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
            });
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("GenerateWMR.js", $parent);
    	});
	}
?>
