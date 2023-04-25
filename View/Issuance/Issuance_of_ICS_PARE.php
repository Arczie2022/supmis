<?php
    $page_title = 'Issuance of ICS/PARE';
    require_once '../Shared/Master.php';
    function contentBody(){ 
        form("FormIssuanceICSPARE", "", false, function(){
            verticalPills(function(){
                parentNav(function(){
                    childNav("navGeneralInformation", "General Information", "GeneralInformation", true);
                    childNav("navAddEquipment", "Add Items", "AddEquipment", false, true );
                    childNav("navSerialKey", "Define Barcode", "SerialKey", false, true );
                    childNav("navTableIssuance", "List of Equipment for Issuance", "TableIssuance", false, true );
                });
                parentTab(4, function($total){
                    childTab("GeneralInformation", function(){
                        HiddenTextBox("ID");
                        PageHeader("General Information", "3","30px", "10px");
                        Select2("RIS-PPE", "RISPPE", "DropDown/DropDownRISPPE.php", "11");
                        SelectHTML("Employee", "Employee", [], [], "11", false, "disabled");
                        SelectHTML("PO No/Contract No", "PONo", [], [], "11", false, "disabled");
                        SelectHTML("Fund Cluster", "Fund", [], [], "11", false, "disabled");
                        SelectHTML("Supplier", "Supplier", [], [], "11", false, "disabled");
                    }, 1, $total, true);
                    childTab("AddEquipment", function(){
                        PageHeader("List of Requested Equipment", "3","30px", "30px");
                        table("tblListSelected", ["Equipment", "Description", "Purpose", "Qty", "Price"], ["20%", "20%", "20%", "20%", "20%"]);
                    }, 2, $total);
                    childTab("SerialKey", function(){
                        PageHeader("Define Barcode", "3","30px", "10px");
                        echo '<div id = "divSerialKey"></div>';
                    }, 3, $total);
                    childTab("TableIssuance", function(){
                        PageHeader("List of Equipment under ICS", "3","30px", "10px");
                        table("tblICS", ["Equipment", "Description", "Barcode", "Issued To"], ["25%", "25%", "25%", "25%"]);
                        PageHeader("List of Equipment under PAR", "3","30px", "30px");
                        table("tblPARE", ["Equipment", "Description", "Barcode", "Issued To"], ["25%", "25%", "25%", "25%"]);
                    }, 4, $total);
                });
            });
        });

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("GetPOInformation.js", $parent);
            ScriptLink("GetRequestedEquipmentInICSPARE.js", $parent);
            ScriptLink("CheckSameInfo.js", $parent);
            ScriptLink("buttonTab.js", $parent);
        });
    }
?>
