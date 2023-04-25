<?php
    $page_title = 'List of PAP';
    require_once '../Shared/Master.php';
    function contentBody(){    

        PageHeader("List of MFOs/PAPs", "3","20px", "30px");
        table("tblPAP", ["Code", "Name"], ["50%", "50%"]);

        form("FormUpdatePAP", "Update Information", true, function(){
            PageHeader("PAP Information", "3","30px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                TextBox("Code", "Code", "text", "4");
                TextBox("Name", "Name", "text", "4");
            });
        }); 
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'OnlyAccounting();';
            ScriptLink("RetrievePAP.js", $parent);
            ScriptLink("GetPAP.js", $parent);
            ScriptLink("VerifyPAP.js", $parent);
            ScriptLink("UpdatePAP.js", $parent);
        });
    }
?>
