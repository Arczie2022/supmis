<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){    

        PageHeader("Add New Chart of Account", "3","20px", "30px");
        form("FormAddChart", "Add New Item", false, function(){
            colDiv(function(){
                TextBox("Code", "Code", "text", "3");
                TextBox("Name", "Name", "text", "3");
                TextBox("Legend", "Legend", "text", "2");
                TextBox("Life", "noLife", "number", "2");
                SelectHTML("", "textLife", ["Year", "Month", "Day"], ["Year", "Month", "Day"], "2");
            });
            // captcha(true);
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("AddChartOfAccounts.js", $parent);
            ScriptLink("VerifyChartOfAccount.js", $parent);
        });
    }
?>