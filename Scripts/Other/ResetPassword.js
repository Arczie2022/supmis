$('#btnReset').on('click', function(){
    swalConfirm("", "<h4 >Are you sure you want to Reset the Password?</h4>\
         <h6>Note: The Default Password is Employee ID Number</h6>", "info", function(){
        swalLoading("Resetting Password");
        var code = ($("#Employee option:selected").text()).split('(')[1];
        code = code.split(')')[0];
        var userdata = {
            'ID': code
        };
        ajaxCustom("Other/ResetPassword.php", userdata, function(data){
            swalMessage("Reset Password Succesful", "", "success", true);
        });
    });
});