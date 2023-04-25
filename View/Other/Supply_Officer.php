<?php
    $page_title = 'List of Supply Officer';
    require_once '../Shared/Master.php';
    function contentBody(){    
        PageHeader("List of Supply Officers", "3","30px", "30px");
        table("tblListOfficer", ["ID Number", "Name", "Position", "Office"], ["25%","25%","25%","25%"]);
        form("FormUpdateOfficer", "Update Position", true, function(){
            PageHeader("Employee Information", "3","20px", "30px");
            HiddenTextBox("ID");
            colDiv(function(){
                HiddenTextBox("oldLevel");
                require_once '../../Models/DropDown/DropDownAccountLevel.php';
                TextBox("Employee", "Employee", "text", "4", "", "", "disabled");
                TextBox("Office", "Office", "text", "4", "", "", "disabled");
                Select("User Level", "UserLevel", $arrayUserLevel, "ID", "ID", "Level", "4");
            });
        });
    }
    Script(array_pop(explode("\\", __DIR__)), function($parent){
        echo 'RestrictSession();';
        ScriptLink("RetrieveSupplyOfficer.js", $parent);
        ScriptLink("GetOfficerInformation.js", $parent);
        ScriptLink("UpdateSupplyOfficer.js", $parent);
    });
?>