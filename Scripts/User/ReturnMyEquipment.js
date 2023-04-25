$('#btnAdd').on('click', function(evt){
    $('#FormReturnEquipment').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            swalConfirm("Are you sure you want to Save?", "", "info", function(){
                swalLoading("Returning Issued Equipment");
                var userdata = {
                    'ID': $('#ID').val(),
                    'Status': $('#Status').val(),
                    'Reason': $('#Reason').val()
                };
                ajaxCustom("User/ReturnMyEquipment.php", userdata, function(data){
                    swalMessage("Returned Successfully to the Supply Coordinator", "", "success", true);
                });
            });
        }
    });
    ajaxRules("Status Reason", "required", [true], evt);
});