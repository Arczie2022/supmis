<?php
    $page_title = 'Reissuance of Supply/Equipment';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Filter", "3","30px", "30px");
        SelectHTML("Issuance Type", "Type", ["ICS", "PAR"], ["Inventory Custodian  Slip", "Property Acknowledgement Receipt"], "5");
        colDiv(function(){
            PageHeader("List for Reissuances", "3","20px", "30px");
            table("tblReIssue", ["Issue Code", "Equipment", "Quantity"], ["35%", "35%", "30%"]);
        });
        form("FormSupplyInformation", "Reissue", true, function(){
            colDiv(function(){
                PageHeader("Reissuance to Employee", "3","5px", "30px");
                HiddenTextBox("ID");
                HiddenTextBox("hiddenIssueCode");
                colDiv(function(){
                    TextBox("Issuance Code", "IssuanceCode", "text", "4", "", "", "disabled");
                    TextBox("Equipment Code", "EquipmentCode", "text", "4", "", "", "disabled");
                    TextBox("Equipment", "Equipment", "text", "4", "", "", "disabled");
                });
                colDiv(function(){
                    Select("Barcode", "Serial", [], "", "", "", "4", true);
                    Select2("Employee", "Employee", "DropDown/DropDownEmployeeInDepartment.php", "4");
                    SelectHTML("Office", "Office", [], [], "4", false, "disabled");
                });
            });
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("ChangeReissuanceType.js", $parent);
            ScriptLink("GetReissueInfoByIssueID.js", $parent);
            ScriptLink("ChangeOfficeByEmployee.js", $parent);
            ScriptLink("ReIssueEquipmentToEmployee.js", $parent);
        });
    }
?>
