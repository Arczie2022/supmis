<?php
    $page_title = 'List for Disposal Parts';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("List of Equipment to be Disposed", "3","30px", "30px");
        table("tableForDisposalParts", ["Date Returned", "Equipment", "Parts", "Barcode", "Employee", "Office"], ["10%", "20%", "20%", "15%", "20%", "15%"]);
        form("divTable", "", false, function(){
            colDiv(function(){
                PageHeader("Selected Equipment to be Disposed", "3","10px", "30px");
                table("tableListToDisposed",  ["Date Returned", "Equipment", "Parts", "Barcode", "Employee", "Office"], ["10%", "20%", "20%", "15%", "20%", "15%"]);
            });
            // captcha(true);
            colDiv(function(){
                PageHeader("Disposal Method", "3","0px", "30px");
                colDiv(function(){
                    require_once '../../Models/DropDown/DropDownDisposal.php';
                    TextAccounting("Disposal Cost", "Cost", "4");
                    Select("Type of Disposal", "Type", $arrayDisposal, "Code", "Code", "Name", "4");
                    TextArea("Remarks", "Remarks", "4");
                });
                colDiv(function(){
                    TextBox("Receipt No (if applicable)", "Receipt", "text", "4");
                    TextBox("Date of Receipt", "ReceiptDate", "date", "4");
                    TextArea("Name of Agency (if Transferred)", "Agency", "4");
                }); 
            });
            colDiv(function(){
                buttonWoutDIV("Select All Equipment", "btnSelectAll", true, "");
                buttonWoutDIV("Dispose Equipment", "btnSave", true, "margin-left: 1%; margin-right: 1%;");
                buttonWoutDIV("Clear Selected", "btnReset", true, "");
            }, "",  "justify-content: center; ");
        });

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("RetrieveListForDisposalParts.js", $parent);
            echo "if (slevel != '2'){";
                ScriptLink("tableForDisposalParts.js", $parent);
                ScriptLink("buttonForDisposalParts.js", $parent);
            echo "}else{";
                 echo "$('#divTable').css('display', 'none');";
            echo "}";
        });
    }
?>