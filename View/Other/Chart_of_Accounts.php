<?php
    $page_title = 'List of Chart of Accounts';
    require_once '../Shared/Master.php';
    function contentBody(){    
        require_once '../../Models/Main/SessionScript.php';

        PageHeader("List of Chart of Accounts", "3","20px", "30px");
        table("tblChartOfAccount", ["Code", "Description", "Legend"], ["30%", "40%", "30%"]);
        
        form("FormUpdateChart", "Update Information", true, function(){
            PageHeader("Chart of Account Information", "3","30px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                TextBox("Code", "Code", "text", "3");
                TextBox("Name", "Name", "text", "3");
                TextBox("Legend", "Legend", "text", "2");
                TextBox("Life", "noLife", "number", "2");
                SelectHTML("", "textLife", ["Year", "Month", "Day"], ["Year", "Month", "Day"], "2");
            });
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'OnlyAccounting();';
            
            ScriptLink("RetrieveChartOfAccount.js", $parent);
            ScriptLink("GetChartOfAccountById.js", $parent);
            ScriptLink("VerifyChartOfAccount.js", $parent);
            ScriptLink("UpdateChartOfAccount.js", $parent);
        });
    }
?>
