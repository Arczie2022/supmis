$('#btnAdd').on('click', function(evt){
    $('#FormChangePass').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            swalLoading("Changing Password");
            var userdata = {
                'password': $('#New').val()
            };
            ajaxCustom("User/ChangePassword.php", userdata, function(data){
                location.replace("../../View/Home/homepage.php");
                swal.close();
            });
        }
    });
    ajaxRules("Old New Repeat", "required InputTextBox", [true, true], evt);
    ajaxRules("New Repeat", "minlength equalTo", [6, ["", "#New"]], evt);
});