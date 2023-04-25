<?php
    $page_title = 'List of My Purchase Request';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("List of My Purchase Request", "3","30px", "20px");
        table("tblMyRequest", ["Equipment", "Description", "Type", "Serial", "Quantity", "Price", "Status"], ["15%", "20%", "15%", "15%", "10%", "15%", "10%"]);

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("ListOfPRByEmp.js", $parent);
        });
    }
?>
