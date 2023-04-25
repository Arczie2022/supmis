<?php
    $page_title = 'List of Issued Supply/Equipment';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/DropDown/DropDownFund.php';
        PageHeader("Search", "3","20px", "30px");
        form("FormSearchIssuedSupply", "Search", false, function(){
            colDiv(function(){
                HiddenTextBox("SearchID");
                SelectHTML("Category", "Category", 
                    ["1", "2", "3", "4", "5", "6", "7", "8", "9"], 
                    ["Barcode", "Date", "Employee", "Fund Cluster", "Office", "PO Number", "RIS/ICS/PAR Code", "Property Code", "Year"], "4");
                TextBox("Search", "Search", "text", "4");
                SelectHTML("Type", "Type", ["1", "2", "3"], 
                    ["Requisition and Issue Slip", "Inventory Custodian Slip", "Property Acknowledgement Receipt"], "4");
            });
        });
        colDiv(function(){
            PageHeader("List of Issuances", "3","20px", "10px");
            table("tblListIssuance", 
                ["Issued Date", "Reissued Date", "Issuance Code", "Office"],
                ["25%", "25%", "25%", "25%"]);
        colDiv(function(){
            PageHeader("Issuance Information", "3","10px", "30px");
            colDiv(function(){
                TextBox("Issued Date", "DateIssued", "text", "4", "", "", "disabled");
                TextBox("Reissued Date", "DateReissued", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                HiddenTextBox("issueID");
                TextBox("Issuance Type", "IssueType", "text", "4", "", "", "disabled");
                TextBox("Issuance Code", "IssueCode", "text", "4", "", "", "disabled");
                TextBox("Purchase Number Order", "PONo", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
               TextBox("Supplier", "Supplier", "text", "4", "", "", "disabled");
               TextBox("Fund Cluster", "Fund", "text", "4", "", "", "disabled");
               TextArea("Purpose (For RIS Only)", "Purpose", "4", "disabled"); 
            });
            PageHeader("List of Equipment", "3","20px", "30px");
            table("tblEquipment", 
                ["Equipment", "Quantity", "Issued to", "Reissued to"], 
                ["25%", "25%", "25%", "25%"]);
        }, "divIssuanceInfo",  "hidden");

        colDiv(function(){
            PageHeader("Equipment Information", "3","10px", "30px");
            colDiv(function(){
                TextBox("Code", "EquipmentCode", "text", "4", "", "", "disabled");
                TextArea("Name", "Name", "4", "disabled");
                TextBox("Property Number", "Property", "text", "4", "", "", "disabled");
            });
            colDiv(function(){
                TextBox("Estimated Useful Life", "Life", "text", "4", "", "", "disabled");
                TextBox("Chart of Account", "Chart", "text", "4", "", "", "disabled");

            });
        }, "divEquipmentInfo",  "hidden");

        colDiv(function(){
            PageHeader("List of Barcode", "3","0px", "30px");
            
            echo '
                <div class = "row col-lg-12" style = "margin-left: 3px; margin-bottom: 10px;">
                    <div style="border: black solid 1px; background-color: white; text-align: center; font-weight: 600; font-size: 13px; width: 20%">Currently Issued</div>
                    <div style="border: black solid 1px; background-color: #FDEE87; text-align: center; font-weight: 600; font-size: 13px; width: 20%">Returned</div>
                    <div style="border: black solid 1px; background-color: #8cd3ff; text-align: center; font-weight: 600; font-size: 13px; width: 20%">At the Warehouse</div>
                    <div style="border: black solid 1px; background-color: #ec9488; text-align: center; font-weight: 600; font-size: 13px; width: 20%">Disposed</div>
                    <div style="border: black solid 1px; background-color: #9ce62a; text-align: center; font-weight: 600; font-size: 13px; width: 20%">Re-issued</div>
                </div>
                ';
            table("tblSerial", ["Description", "Barcode", "Property Code"], ["40%", "30%", "30%"]);
        }, "divSerial",  "hidden");
        colDiv(function(){
            PageHeader("History of Issued Equipment", "3","10px", "30px");
            table("tblHistory", ["Issued Date", "Employee", "Issuance Code", "Equipment", "Serial"], ["20%", "20%", "20%", "20%", "20%"]);
        }, "divReissue",  "hidden");

        button("btnGenerate", "Generate Form", "12", "display: ; margin-bottom: 20px;" ,"divBtn");
        }, "divIssuance", "hidden");

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("CategoryChange.js", $parent);
            ScriptLink("btnSearch.js", $parent);
            ScriptLink("tblListIssuance.js", $parent);
            ScriptLink("tblEquipment.js", $parent);
            ScriptLink("tblSerial.js", $parent);
            ScriptLink("GenerateForm.js", $parent);
        });
    }
?>
