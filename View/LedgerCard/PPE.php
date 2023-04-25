<?php
    $page_title = 'PPE Ledger Card';
    require_once '../Shared/Master.php';
    function contentBody(){ 
    	PageHeader("Ledger Card for Property, Plant and Equipment", "3","10px", "30px");
    	form("FormSearch", "Generate Report", false, function(){
	    	colDiv(function(){
	    		require_once '../../Models/DropDown/DropDownFund.php';
		    	Select2("Chart of Accounts", "Chart", "DropDown/DropDownChartOfAccount.php", "3");
		    	Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "3");
		    	Select2WoutURL("Equipment", "Equipment", "3");
		    	TextBox("Estimated Useful Life", "Life", "text", "3", "", "", "disabled");
	    	});
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("ChangeChartValue.js", $parent);
            ScriptLink("btnGenerateReport.js", $parent);
    	});
 	}

?>