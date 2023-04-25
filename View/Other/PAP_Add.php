<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("Add New MFO/PAP", "3","20px", "30px");
        form("FormAddPAP", "Add New Item", false, function(){
            colDiv(function(){
                TextBox("Code", "Code", "text", "4");
                TextBox("Name", "Name", "text", "4");
            });
            // captcha(true);
        }); 
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("AddPAP.js", $parent);
            ScriptLink("VerifyPAP.js", $parent);
        });
    }
?>
