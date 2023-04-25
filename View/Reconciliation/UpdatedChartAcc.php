<?php
    $page_title = 'Updated Chart of Account By Accounting';
    require_once '../Shared/Master.php';
    function contentBody(){ 
    	PageHeader("List of Purchase Order", "3","30px", "30px");
    	table("tblListPO", ["Date", "Purchase Order"], ["40%", "60%"]);

    	PageHeader("List of Equipment", "3","30px", "30px");
    	table("tblListSupply", ["Code", "Equipment", "Description", "Purpose", "Price"], ["20%", "20%", "20%", "20%", "20%"]);
    	
    	PageHeader("Chart of Account", "3","0px", "30px");
    	colDiv(function(){
    		TextBox("Chart of Account Set By SPMO", "Chart_SPMO", "text", "6", "", "", "disabled");
    		TextBox("Chart of Account Set By Acctng", "Chart_Acc", "text", "6", "", "", "disabled");
    	});

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("RetrieveListPOByUpdateChart.js", $parent);
    		ScriptLink("GetListEquipmentByPOInUpdated.js", $parent);
    		ScriptLink("GetChartOfAccountByEquipmentInUpdated.js", $parent);
    	});
	}
?>
