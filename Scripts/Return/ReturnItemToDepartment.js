$("input[type='submit']").on("click", function(evt){
    var id = this.id;
    $('#FormEquipmentInfo').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            switch(id){
                case "btnReturn":
                    swalConfirm("Are you sure you want to Return?", "", "info", function(){
                        swalLoading("Returning Equipment to the Supply Coordinator");
                        var userdata = {
                            'Type': 'Department',
                            'ID': $('#ID').val(),
                            'Remarks': $('#Remarks').val(),
                            'Status': $('#Status').val()
                        };
                        ajaxCustom("Return/UpdateReturnItem.php", userdata, function(data){
                            swalMessage("Returned Successfully to the Supply Coordinator", "", "success", true);
                        }, true, true);
                    });
                break;
                case "btnDispose":
                    swalConfirm("Are you sure you want to Dispose?", "", "info", function(){
                        swalLoading("Moving Equipment to the List for Disposal Item");
                        var userdata = {
                            'Type': 'Disposal',
                            'ID': $('#ID').val(),
                            'Remarks': $('#Remarks').val(),
                            'Status': $('#Status').val()
                        };
                        ajaxCustom("Return/UpdateReturnItem.php", userdata, function(data){
                            swalMessage("Moved to the List for Disposal Item Successfully", "", "success", true);
                        }, true, true);
                    });
                break;
                case "btnWarehouse":
                    swalConfirm("Are you sure you want to Store in Warehouse?", "", "info", function(){
                        swalLoading("Moving Equipment to the Warehouse");
                        var userdata = {
                            'Type': 'Warehouse',
                            'ID': $('#ID').val(),
                            'Remarks': $('#Remarks').val(),
                            'Status': $('#Status').val()
                        };
                        ajaxCustom("Return/UpdateReturnItem.php", userdata, function(data){
                            swalMessage("Equipment has been moved to the Warehouse", "", "success", true);
                        }, true, true);
                    });
                break;
                default:

                break;
            }
            
        }
    });
    ajaxRules("Status", "required", [true], evt);
    ajaxRules("Remarks", "InputTextBox", [true], evt);
});