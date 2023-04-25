<?php
    $page_title = 'For Approval of RIS';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("List of RIS", "3","30px", "30px");
        table("tblListRequestedSupply", ["Date Requested", "RIS Code", "Employee", "Office"], ["25%", "25%", "25%", "25%"]);
        PageHeader("List of Supply Requested", "3","30px", "30px");
        table("tblListRequestSupply", ["Quantity", "Unit", "Supply", "Status", "Remarks"], ["20%", "20%", "20%", "20%", "20%"]);
        HiddenTextBox("rowID");
        HiddenTextBox("ID");
        colDiv(function(){
            buttonWoutDIV("Approved RIS", "Approved");
            buttonWoutDIV("Disapproved RIS", "Disapproved");
        }, "", "justify-content: center");

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'RestrictSession();';
            ScriptLink("RetrieveListRISForApproval.js", $parent);
            ScriptLink("GetListOfSupplyInAllApprovedByRISCode.js", $parent);
            ScriptLink("ApprovedRIS.js", $parent);
        });
    }
?>
