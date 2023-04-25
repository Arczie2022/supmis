<?php
    $page_title = 'List of PR For Records';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';
        
        PageHeader("List of Purchase Request", "3","30px", "20px");
        table("tblPR", ["Employee", "Equipment", "Description", "Type", "Serial", "Quantity", "Price", "Status", "Supply Officer"], ["10%", "10%", "15%", "10%", "15%", "10%", "10%", "10%", "10%"]);

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'RestrictSession();';
            ScriptLink("RetrievePRRecords.js", $parent);
        }); 
    }
?>
