<?php
    $page_title = 'Adding New Item';
    require_once '../Shared/Master.php';
    function contentBody(){    

        PageHeader("Add New Supplier", "3","30px", "30px");
        
        form("FormAddSupplier", "Add New Item", false, function(){
            HiddenTextBox("ID");
            colDiv(function(){
                TextBox("Name", "Name", "text", "4");
                TextArea("Address", "Address", "8");
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
            // captcha(true);
        });
        Script(array_pop(explode("\\", __DIR__)), function($parent){
            ScriptLink("VerifySupplier.js", $parent);
            ScriptLink("AddSupplier.js", $parent);
        });
    }
?>
