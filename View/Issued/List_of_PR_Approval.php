<?php
    $page_title = 'List of PR For Approval';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';
        
        PageHeader("List of Purchase Request", "3","30px", "20px");
        table("tblPR", ["Employee", "Equipment", "Description", "Type", "Serial", "Quantity", "Price"], ["15%", "15%", "15%", "15%", "15%", "10%", "15%"]);
        PageHeader("List of Request to be Approved", "3","30px", "30px");
        table("tblApproval", ["Employee", "Equipment", "Description", "Type", "Serial", "Quantity", "Price"], ["15%", "15%", "15%", "15%", "15%", "10%", "15%"]);
        colDiv(function(){
            button("btnApprove", "Approve Purchase Requests", 6);
            button("btnDisapprove", "Disapprove Purchase Requests",6);
        }, "", "margin-top: 20px");
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'RestrictSession();';
            ScriptLink("RetrievePRForApproval.js", $parent);
            ScriptLink("AddForApprovalRequest.js", $parent);
            ScriptLink("ApprovedPurchaseRequest.js", $parent);
        });
    }
?>
