<?php
    $page_title = 'Equipment exceeding Useful Life';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("List of Equipment exceeding Useful Life", "3","30px", "30px");
    	table("tblExceed", ["Issuance Code", "Equipment", "Property Number", "Issued to", "First Date of Issued"], ["20%", "20%", "20%", "20%", "20%"]);

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("RetrieveExceedUsefulLife.js", $parent);
    	});

	}
?>
