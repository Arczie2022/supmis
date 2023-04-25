$('#btnAdd').on('click', function(evt){
    $('#FormSupplyInformation').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            swalConfirm("Are you sure you want to Reissue?", "", "info", function(){
                swalLoading("Reissuing " + $("#Type").val() + " Equipment(s)");

                var code = ($("#Employee option:selected").text()).split('(')[1];
                code = code.split(')')[0];
                var tempSerial = $('#Serial').select2('data'), arrSerial = [];
                for (var i = 0; i < tempSerial.length; i++) {
                    arrSerial.push({
                        ID: tempSerial[i].id,
                        text: tempSerial[i].text
                    });
                }
                var userdata = {
                    'Type': $('#Type').val(),
                    'Employee': $("#Employee").val(),
                    'EmployeeCode': code,
                    'Serial': arrSerial
                };
                ajaxCustom("Reissuance/ReIssueEquipmentToEmployee.php", userdata, function(data){
                    var valType = $('#Type').val() == "PAR" ? "pare" : "ics";
                    swalGenerate("Reissued Successfully", "", "Print Form", 
                        GetURL('../../View/PrintedPage/reissue_'+valType+
                                '.php', ["ID", "emp"], [$('#hiddenIssueCode').val(), code]));
                });
            });
        }
    });
    ajaxRules("Serial Employee", "required", [true], evt);
});