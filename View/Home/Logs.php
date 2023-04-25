<?php
    $page_title = 'homepage';
    require_once '../Shared/Master.php';
    function contentBody(){ 
    	PageHeader("Filter", "3","10px", "30px");
    	form("formFilter", "Search", false, function(){
    		colDiv(function(){
    			require_once '../../Models/DropDown/DropDownLogType.php';
		    	Select("Type", "Type", $tblstatus, "ID", "ID", "Name", "4");
		    	TextBox("From", "fromDate", "date", "4", date("Y-m-d"));
		    	TextBox("To", "toDate", "date", "4", date("Y-m-d"));
    		});
    	});
    	PageHeader("Notification", "3","30px", "0px");
    	table("tblLogs", ["Date", "Description", "Responsible Officer"], ["25%", "45%", "30%"]);

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("RetrieveLogs.js", $parent);
    		ScriptLink("logsLoad.js", $parent);
    	});
	} 
?>