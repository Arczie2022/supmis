<?php
    $page_title = 'List of Fund Cluster';
    require_once '../Shared/Master.php';
    function contentBody(){    

        PageHeader("List of Fund Cluster", "3","20px", "30px");
        table("tblFund", ["Code", "Name", "Legend"], ["30%", "40%", "30%"]);

        form("FormUpdateFund", "Update Information", true, function(){
            PageHeader("Fund Cluster Information", "3","30px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                TextBox("Code", "Code", "text", "4");
                TextBox("Name", "Name", "text", "4");
                TextBox("Legend", "Legend", "text", "4");
            });
        }); 
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'OnlyAccounting();';
            ScriptLink("RetrieveFundCluster.js", $parent);
            ScriptLink("GetFundCluster.js", $parent);
            ScriptLink("VerifyFund.js", $parent);
            ScriptLink("UpdateFundCluster.js", $parent);
        });
    }
?>
