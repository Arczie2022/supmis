<?php
    $page_title = 'Supply Officer Records';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Records of Previous Supply Officer", "3","20px", "30px");
        table("tblOfficer", ["Date", "Employee", "Remarks", "Responsible Officer"], ["20%", "20%", "20%", "20%", "20%"]);

        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("RetrieveOfficerRecords.js", $parent);
        });
    }
?>