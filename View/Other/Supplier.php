<?php
    $page_title = 'List of Supplier';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("List of Suppliers", "3","30px", "30px");
        table("tblListSupplier", ["Code", "Name", "Status"], ["30%", "40%", "30%"]);

        form("FormUpdateSupplier", "Update Information", true, function(){
            PageHeader("Supplier Information", "3","30px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                TextBox("Code", "Code", "text", "4", "", "", "disabled");
                TextBox("Name", "Name", "text", "4");
                TextArea("Address", "Address", "4");
            });
            colDiv(function(){
                TextBox("PhilGEPS Number", "GEPS", "text", "4");
                TextBox("DBP Number", "DBP", "number", "4");
                TextBox("TIN Number", "TIN", "number", "4");
            });
            colDiv(function(){
                TextBox("Email Address", "Email", "email", "4");
                TextBox("Mobile Number", "CPNo", "number", "4");
                TextBox("Telephone Number", "TelNo", "number", "4");
            });
            colDiv(function(){
                TextBox("Contact Person", "CPerson", "text", "4");
                TextBox("Position", "Position", "text", "4");
                SelectHTML("Status", "Status", ["1", "2", "3"], ["Active", "Suspended", "Blacklist"], "4");
            });
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            echo 'RestrictSession();';
            ScriptLink("RetrieveSupplier.js", $parent);
            ScriptLink("GetSupplierById.js", $parent);
            ScriptLink("VerifySupplier.js", $parent);
            ScriptLink("UpdateSupplier.js", $parent);
        });
    }
?>
