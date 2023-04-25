<?php
    $page_title = 'List of PO Details';
    require_once '../Shared/Master.php';
    function contentBody(){    
    	PageHeader("List of Purchase Orders", "3","0px", "30px");
    	table("tblListPO", ["Date", "Code"], ["40%", "60%"]);
    	
		form("divListPO", "Update Fund Cluster", false, function(){
    		colDiv(function(){
	    		PageHeader("Purchase Order Details", "3","0px", "30px");
	    		require_once '../../Models/DropDown/DropDownFund.php';
	    		HiddenTextBox("POID");
	    		TextBox("Supplier", "Supplier", "text", "4", "", "", "disabled");
	    		Select("Fund Cluster", "Fund", $arrayFund, "ID", "ID", "Name+Code", "4");
	    		TextBox("MFO/PAP", "PAP", "text", "4", "", "", "disabled");
    		});
    	}, "12", "btnFund");
    	
    	colDiv(function(){
    		HiddenTextBox("DRID");
	    	PageHeader("List of Delivery Receipts / Sales Invoice", "3","0px", "20px");
	    	table("tblListDR", ["Date", "DR/SI No"], ["40%", "60%"]);
    	}, "divListDR",  "");

    	colDiv(function(){
	    	PageHeader("List of Supplies/Equipment", "3","0px", "30px");
	    	table("tblListEquip", ["Supply", "Description", "Purpose", "Unit", "Price"], ["20%", "20%", "20%", "20%", "20%"]);
    	}, "divListEquip",  "");

    	form("divEquipDetails", "Update Chart of Account", false, function(){
            HiddenTextBox("descID");
    		PageHeader("Equipment Details", "3","0px", "30px");
    		colDiv(function(){
    			HiddenTextBox("EquipID");
    			TextBox("Code", "Code", "text", "3", "", "", "disabled");
    			TextBox("Supply", "Supply", "text", "3", "", "", "disabled");
    			TextBox("Property Number", "Property", "text", "3", "", "", "disabled");
    			TextArea("Description", "Description", "3", "disabled");
    		});
    		colDiv(function(){
    			TextArea("Purpose", "Purpose", "3", "disabled");
    			Select2("Chart of Account", "Chart", "DropDown/DropDownChartOfAccount.php", "3");
    			TextBox("Estimated Useful Life", "Life", "text", "3", "", "", "disabled");
				TextBox("Unit", "Unit", "text", "3", "", "", "disabled");
    		});
    		colDiv(function(){
				TextBox("Specific Unit", "Specific", "text", "3", "", "", "disabled");
    			TextBox("Stock", "Stock", "text", "3", "", "", "disabled");
    			TextBox("Price", "Price", "text", "3", "", "", "disabled");
    			TextBox("Total", "Total", "text", "3", "", "", "disabled");
    		});
    	}, "12", "btnChart");

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("RetrieveAllPO.js", $parent);
    		ScriptLink("tblListPO.js", $parent);
    		ScriptLink("tblListDR.js", $parent);
    		ScriptLink("tblListEquip.js", $parent);
    		ScriptLink("UpdateChartOfAccount.js", $parent);
    		ScriptLink("UpdateFundCluster.js", $parent);
    	});
	}
?>
