<?php
    $page_title = 'Encoding of RIS';
    require_once '../Shared/Master.php';
    function contentBody(){     

        form("FormRISEncode", "", false, function(){
            PageHeader("Encoding of old RIS Records", "3","30px", "30px");
            verticalPills(function(){
                parentNav(function(){
                    childNav("navGeneralInformation", "General Information", "GeneralInformation", true);
                    childNav("navAddEquipment", "Adding Supply", "AddEquipment", false, true);
                    childNav("navTableRIS", "List of Supplies", "TableRIS", false, true);
                });
                parentTab(3, function($total){
                    childTab("GeneralInformation", function(){
                        require_once '../../Models/DropDown/DropDownSupplyOfficer.php';
                        PageHeader("General Information", "3","30px", "10px");
                          
                        TextBox("Date Approved", "DateApproved", "date", "11", "", "", "max = '2021-07-31'");
                        colDiv(function(){
                        	TextBox("RIS Code", "Code1", "text", "5", "", "", "disabled");
                        	TextBox("", "Code2", "text", "6");
                        });
                        TextArea("Purpose", "Purpose", "11");
                        Select("Responsible Officer", "SupplyOfficer", $arraySupplyOfficer, "ID", "ID", "Name+Office", "11");
                        Select2("Employee", "Employee", "DropDown/DropDownEmployeeWithOffice.php", "11");
                    }, 1, $total, true);
                    childTab("AddEquipment", function(){
                    	PageHeader("Add New Equipment", "3","30px", "10px");
                        Select2("Supply", "Supply", "DropDown/DropDownSupply.php", "11");
                        SelectHTML("Specific Measurement", "Specific", [], [], "11");
                        SelectHTML("Estimated Stock", "EstimatedStock", [], [], "11", false, "disabled");
                        TextBox("Requested Quantity", "RequestedQuantity", "number", "11");
                        TextBox("Approved Quantity", "ApprovedQuantity", "number", "11");
                        SelectHTML("Unit", "Unit", [], [], "11", false, "disabled");
                        TextArea("Remarks", "Remarks", "11");

                    }, 2, $total);
                    childTab("TableRIS", function(){
                    	PageHeader("List of Requested Supply", "3","30px", "10px");
                        table("tblRIS", ["Supply", "Requested Quantity", "Approved Quantity", "Unit", "Specific"], ["20%", "20%", "20%", "20%", "20%"]);
                    }, 3, $total, false, "Add Again");
                });
            });
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("GenerateRISCode.js", $parent);
            ScriptLink("removeDataInTable.js", $parent);
            ScriptLink("VerifyRISCode.js", $parent);
            ScriptLink("buttonTabRIS.js", $parent);
            ScriptLink("ViewAvailableStockBySupplyID.js", $parent);
            ScriptLink("GetDescriptionInRequestSupply.js", $parent);
        });
    }
?>
