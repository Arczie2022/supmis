<?php
    $page_title = 'Requesting Equipment';
    require_once '../Shared/Master.php';
    function contentBody(){    

    	PageHeader("Filter", "3","0px", "30px");
    	form("FormSearch", "Search Equipment", false, function(){
	    	colDiv(function(){
	    		require_once '../../Models/DropDown/DropDownFund.php';
	    		Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
	    		Select2("Equipment", "Equipment", "DropDown/DropDownSupply.php", "4");
	    	});
	    	HiddenTextBox("HiddenEquipment", "");
    	});

		PageHeader("List of Description", "3","30px", "20px");
		table("tblDescription", ["Description", "Purpose", "Quantity", "Unit", "Price"], ["25%", "25%", "15%", "15%", "20%"]);

		PageHeader("List of Equipment to be Requested", "3","30px", "30px");
		table("tblRequested", ["PO No", "Equipment", "Description", "Quantity", "Price"], ["20%", "20%", "20%", "20%", "20%"]);
		button("btnSave", "Request Equipment", "12");

		Script(array_pop(explode("\\", __DIR__)), function($parent){
			ScriptLink("GetDescriptionEquipmentInRequest.js", $parent);
			ScriptLink("tblDescriptionInEquipmentRequest.js", $parent);
			ScriptLink("tblRequestedInEquipmentRequest.js", $parent);
			ScriptLink("RequestingEquipment.js", $parent);
		});
    }
?>