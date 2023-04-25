<?php
    $page_title = 'Dormant Inventories';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("List of Dormant Inventories", "3","30px", "30px");
    	table("tblDormant", ["Supply", "Stock/Property No", "Unit", "Stock", "Date of Item Received"], ["20%", "20%", "20%", "20%", "20%"]);

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("RetrieveDormantInventories.js", $parent);
    	});
	}
?>
