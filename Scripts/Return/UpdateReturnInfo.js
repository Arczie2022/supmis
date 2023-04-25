$('#btnAdd').on('click', function(evt){
    $('#FormEquipmentInfo').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            swalConfirm("Are you sure you want to Proceed?", "", "info", function(){
                var Type = "", Message = "";
                switch($("#Forward").val()){
                    case "1":
                        swalLoading("Returning Equipment to Employee");
                        Type = "Employee";
                        Message = "Returned Successfully";
                    break;
                    case "2":
                        swalMessage("", "<h5>Please Store into the Warehouse first <br> before Reissuing to other Employee</h5>", "info");
                        // Type = "Reissue";
                        Type = "";
                    break;
                    case "3":
                        swalLoading("Storing Equipment to Warehouse");
                        Type = "Warehouse";
                        Message = "Stored in Warehouse Successfully";
                    break;
                    case "4":
                        swalLoading("Forwarding Equipment to SPMO-Main");
                        Type = "SPMO";
                        Message = "Forwarded to SPMO-Main Successfully";
                    break;
                    case "5":
                        swalLoading("Forwarding Equipment for Repair");
                        Type = "Repair";
                        Message = "Forwarded for Repair Successfully";
                    break;
                    default: 
                        ajaxMessage("Connection Error");
                        Type = "";
                    break;
                }

                if(Type != ""){
                    var userdata = {
                        'Type': Type,
                        'ID': $('#ID').val(),
                        'Remarks': $('#Remarks').val(),
                        'Status': $('#Status').val()
                    };
                    ajaxCustom("Return/UpdateReturnItem.php", userdata, function(data){
                        swalMessage(Message, "", "success", true);
                    }, true, true);
                }
            });
        }
    });
    ajaxRules("Status Forward", "required number", [true, true], evt);
    ajaxRules("Remarks", "InputTextBox", [true], evt);
});