<?php
    $page_title = 'List of Disposed Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("List of Disposed Equipment", "3","20px", "30px");
        table("tblListDisposed", ["Date of Disposal", "Code", "Equipment", "Barcode", "Employee", "Type", "Cost"], ["15%", "15%", "13%", "10%", "15%", "20%", "12%"]);
    }
    Script(array_pop(explode("\\", __DIR__)), function($parent){
        ScriptLink("RetrieveListOfDisposedEquipment.js", $parent);
    });
?>
