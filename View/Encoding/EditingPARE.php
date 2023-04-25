<?php
    $page_title = 'Editing of PARE';
    require_once '../Shared/Master.php';
    function contentBody(){    
       form("FormIssuance", "", false, function(){
            verticalPills(function(){
                parentNav(function(){
                    childNav("navGeneralInformation", "General Information", "GeneralInformation", true);
                    childNav("navAddEquipment", "Add Items", "AddEquipment", false, true );
                    childNav("navSerialKey", "Define Barcode", "SerialKey", false, true );
                    childNav("navTableIssuance", "List of Equipment", "TableIssuance", false, true );
                });
                parentTab(4, function($total){
                    childTab("GeneralInformation", function(){
                    	require_once '../../Models/DropDown/DropDownSupplyOfficer.php';
                        PageHeader("General Information", "3","30px", "10px");
                        TextBox("Date Approved", "DateApproved", "date", "11", "", "", "max = '2021-07-31'");
                        colDiv(function(){
                        	TextBox("PARE Code", "Code1", "text", "5", "", "", "disabled");
                        	TextBox("", "Code2", "text", "6");
                        });
                        TextBox("RIS No.", "RIS", "text", "11", "", "", "readonly");
                        Select2("PO No/Contract No", "PONo", "DropDown/DropDownPONo.php", "11");
                        SelectHTML("Fund Cluster", "Fund", [], [], "11", false, "disabled");
                        SelectHTML("PAP/MFO", "PAP", [], [], "11", false, "disabled");
                        SelectHTML("Supplier", "Supplier", [], [], "11", false, "disabled");
                        Select("Responsible Officer", "Officer", $arraySupplyOfficer, "ID", "ID", "Name+Office", "11");
                        Select2("Employee", "Employee", "DropDown/DropDownEmployeeWithOffice.php", "11");
                    }, 1, $total, true);
                    childTab("AddEquipment", function(){
                        PageHeader("List of Equipment under PO/Contract", "3","30px", "30px");
                        table("tblEquipment", ["Equipment", "Description", "Purpose", "Qty", "Price"], ["20%", "20%", "20%", "20%", "20%"]);
                        PageHeader("Supplies/Equipment for Issuance", "3","30px", "30px");
                        table("tblIssued", ["Equipment", "Description", "Purpose", "Qty", "Price"], ["20%", "20%", "20%", "20%", "20%"]);
                    }, 2, $total);
                    childTab("SerialKey", function(){
                        PageHeader("Define Barcode", "3","30px", "10px");
                        echo '<div id = "divSerialKey"></div>';
                    }, 3, $total);
                    childTab("TableIssuance", function(){
                        PageHeader("List of Equipment to be Issued", "3","30px", "30px");
                        table("tblPARE", ["Equipment", "Description", "Barcode", "Price"], ["25%", "25%", "25%", "25%"]);
                    }, 4, $total, false, "Add Again");
                });
            });
        });

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("GetPOInformation.js", $parent);
            ScriptLink("GeneratePARECode.js", $parent);
            ScriptLink("tblEquipment.js", $parent);
            ScriptLink("removeDataInTable.js", $parent);
            ScriptLink("VerifyPARECode.js", $parent);
            ScriptLink("buttonTabPARE.js", $parent);
        });
    }
?>
