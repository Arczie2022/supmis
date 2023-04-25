<?php
    $page_title = 'Property Card';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("Filter", "3","0", "30px");
    	form("FormEquipment", "Generate Property Card", false, function(){
	    	colDiv(function(){
	    		Select2("Equipment", "Equipment", "DropDown/DropDownSupply.php", "4");
	    		TextBox("Property Number", "Property", "text", "4", "", "", "disabled");
	    	});
    	});
    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("GetPropertyNoBySupply.js", $parent);
    		ScriptLink("GeneratePropertyCard.js", $parent);
    	});
	}
?>
