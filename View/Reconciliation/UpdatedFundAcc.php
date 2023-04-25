<?php
    $page_title = 'Updated Fund Cluster By Accounting';
    require_once '../Shared/Master.php';
    function contentBody(){    

    	PageHeader("Fund Cluster", "3","30px", "30px");
    	table("tblFund", ["Date", "Purchase Order", "Set By SPMO", "Set By Accounting"], ["20%", "20%", "30%", "30%"]);

    	Script(array_pop(explode("\\", __DIR__)), function($parent){
    		ScriptLink("UpdatedFundClusterByAcc.js", $parent);
    	});
?>

<?php }?>
