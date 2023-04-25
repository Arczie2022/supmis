<?php
    $page_title = 'List for Disposal Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("List of Equipment to be Disposed", "3","30px", "30px");
        table("tableForDisposalItem", ["Date Returned", "Code", "Equipment", "Barcode", "Employee", "Office"], ["15%", "15%", "20%", "15%", "20%", "15%"]);
        form("divTable", "", false, function(){
            colDiv(function(){
                PageHeader("Selected Equipment to be Disposed", "3","10px", "30px");
                table("tableListToDisposed",  ["Date Returned", "Code", "Equipment", "Barcode", "Employee", "Office"], ["15%", "15%", "20%", "15%", "20%", "15%"]);
            });
            // captcha(true);
            colDiv(function(){
                PageHeader("Disposal Method", "3","0px", "30px");
                colDiv(function(){
                    require_once '../../Models/DropDown/DropDownDisposal.php';
                    Select("Type of Disposal", "Type", $arrayDisposal, "Code", "Code", "Name", "3");
                    TextAccounting("Disposal Cost", "Cost", "3");
                    TextBox("Receipt No.(if applicable)", "Receipt", "text", "3");
                    TextArea("Remarks", "Remarks", "3");
                });
            });
            colDiv(function(){
                buttonWoutDIV("Select All Equipment", "btnSelectAll", true, "");
                buttonWoutDIV("Dispose Equipment", "btnSave", true, "margin-left: 1%; margin-right: 1%;");
                buttonWoutDIV("Clear Selected", "btnReset", true, "");
            }, "",  "justify-content: center;");
        });

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("RetrieveListForDisposal.js", $parent);
            echo "if (slevel != '2'){";
                ScriptLink("tableForDisposalItem.js", $parent);
                ScriptLink("buttonForDisposal.js", $parent);
            echo "}else{";
                 echo "$('#divTable').css('display', 'none');";
            echo "}";
        });
    }
?>