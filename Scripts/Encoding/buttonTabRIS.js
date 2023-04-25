$('#btnNext_1').on('click', function(evt){
    VerifyRISCode();
    var formValidate = $('#FormRISEncode').validate({
        submitHandler: function(form, e){
            e.preventDefault();

            var dateApproved = $("#DateApproved").val();
            if (dateApproved < "2021-08-01"){
                $('#GeneralInformation').removeClass("show active");
                $('#navGeneralInformation').removeClass('active');

                $('#AddEquipment').addClass("show active");
                $('#navAddEquipment').addClass('active');

                $('#navTableRIS').removeClass('disabled');

                $("#Supply").val("");
                $("#Supply").empty();
                $("#Specific").val("");
                $("#Property").val("");
                $("#EstimatedStock").val("");
                $("#RequestedQuantity").val("");
                $("#ApprovedQuantity").val("");
                $("#Unit").val("");
                $("#Remarks").text("");
            }else{
                swalMessage("July 31, 2021 is the last date of Encoding Old Records", "", "warning", false, function(){
                    swal.close();
                });
            }
            
            formValidate.destroy();
        }
    });
    ajaxRules("DateApproved", "required dateFormat", [true, true], evt);
    ajaxRules("Purpose", "required InputTextBox", [true, true], evt);  
    ajaxRules("Employee SupplyOfficer", "required number", [true, true], evt);
    ajaxRules("Code2", "required number duplicate", [true, true, true], evt);  
});

$('#btnNext_2').on('click', function(evt){
    var table = $('#tblRIS').DataTable();
    var row = table.rows().data();
    var formValidate = $('#FormRISEncode').validate({
        submitHandler: function(form, e){
            e.preventDefault();

            $('#AddEquipment').removeClass("show active");
            $('#TableRIS').addClass("show active");
            $('#navTableRIS').addClass("active");
            $('#navAddEquipment').removeClass('active');
            
            if($('#Supply').val() != null && $('#Supply').val() != ""){
                var data = [];
                   
                data.push({
                    SupplyName: $('#Supply option:selected').text(),
                    Supply: $('#Supply').val(),
                    ApprovedQuantity: $('#ApprovedQuantity').val(),
                    RequestedQuantity: $('#RequestedQuantity').val(),
                    Unit: $('#Unit option:selected').text(),
                    StockID: $('#Specific').val(),
                    Specific: $('#Specific option:selected').text(),
                    Remarks: $('#Remarks').val()
                });

                for (var i = 0; i < row.length; i++) {
                   data.push({
                        StockID: row[i].StockID,
                        SupplyName: row[i].SupplyName,
                        Supply: row[i].Supply,
                        ApprovedQuantity: row[i].ApprovedQuantity,
                        RequestedQuantity: row[i].RequestedQuantity,
                        Unit: row[i].Unit,
                        Specific: row[i].Specific,
                        Remarks: row[i].Remarks
                    }); 
                };

                JSTable(data, "#tblRIS", ["SupplyName", "RequestedQuantity", "ApprovedQuantity", "Unit", "Specific"]);

            }

            $("#Supply").val("");
            $("#Supply").empty();
            $("#Specific").val("");
            $("#Property").val("");
            $("#EstimatedStock").val("");
            $("#RequestedQuantity").val("");
            $("#ApprovedQuantity").val("");
            $("#Unit").val("");
            $("#Remarks").text("");
            
            formValidate.destroy();
        }
    });
    if(row.length == 0 || ($('#Supply').val() != null && $('#Supply').val() != "")){
        ajaxRules("Supply RequestedQuantity ApprovedQuantity", "required number min", [true, true, 1], evt);
        var EstimatedStock = $('#EstimatedStock option:selected').text();
        var RequestedQuantity = $('#RequestedQuantity').val();
        ajaxRules("Supply", "required number Stock", [true, true, EstimatedStock], evt);
        ajaxRules("RequestedQuantity ApprovedQuantity", "required number min max", [true, true, 1, [EstimatedStock, RequestedQuantity]], evt);
        ajaxRules("Specific", "InputTextBox required", [true, true], evt);
        ajaxRules("Remarks", "InputTextBox", [true], evt);
    }
});

$('#btnBack_2').on('click', function(){
    $('#GeneralInformation').addClass("show active");
    $('#navGeneralInformation').addClass('active');

    $('#navAddEquipment').removeClass('active');
    $('#AddEquipment').removeClass("show active");
    
    $('#navTableRIS').addClass('disabled');
    
    var validator = $("#FormRISEncode").validate();
    validator.destroy();
});

$('#navGeneralInformation').on('click', function(){
    $('#navTableRIS').addClass('disabled');
    
    $('#Supply').val('');
    $('#Stock').val('');
    $('#RequestedQuantity').val('');
    $('#Unit').val('');
    $('#ApprovedQuantity').val('');
    $('#Remarks').val('');

    var validator = $("#FormRISEncode").validate();
    validator.destroy();
});

$('#btnNext_3').on('click', function(){
     var formValidate = $('#FormRISEncode').validate({
        submitHandler: function(form, e) {
            e.preventDefault();

            var tblRIS = $('#tblRIS').DataTable();
            var dataRIS = tblRIS.rows().data();

            if(dataRIS.length == 0){
                swalMessage("Failed to Generate!", "Please Add the Equipment first", "warning", false, function(){
                    swal.close();
                    formValidate.destroy();
                });
            }
            else{
                swalConfirm("Are you sure you want to Save?", "", "info", function(){
                    var tblRIS = $('#tblRIS').DataTable();
                    var dataRIS = tblRIS.rows().data();
                    var objRIS = [];
                    for (var i = 0; i < dataRIS.length; i++) {
                        objRIS.push({
                            StockID: dataRIS[i].StockID,
                            SupplyName: dataRIS[i].SupplyName,
                            Supply: dataRIS[i].Supply,
                            ApprovedQuantity: dataRIS[i].ApprovedQuantity,
                            RequestedQuantity: dataRIS[i].RequestedQuantity,
                            Unit: dataRIS[i].Unit,
                            Remarks: dataRIS[i].Remarks
                        });
                    }
                    swalLoading("Saving RIS Records");
                    var Code = $("#Code1").val() + $("#Code2").val();
                    var userdata = {
                        'Code': Code,
                        'Officer': $("#SupplyOfficer").val(),
                        'Employee': $("#Employee").val(),
                        'DateRequest': $('#DateApproved').val(),
                        'Purpose': $('#Purpose').val(),
                        'RIS': objRIS
                    };
                    ajaxCustom("Encoding/GenerateRIS.php", userdata, function(data){
                        swalGenerate("Successfully Saved", "", "Print Form", 
                            GetURL("../../View/PrintedPage/RIS.php", ["ID"], [Code]));
                    }, true, true);
                });
            }
        }
    });  
});

$('#btnBack_3').on('click', function(){
    $('#AddEquipment').addClass("show active");
    $('#TableRIS').removeClass("active");
    $('#navTableRIS').removeClass('active');
    $('#navAddEquipment').addClass('active');

    $('#Supply').val('');
    $('#Stock').val('');
    $('#RequestedQuantity').val('');
    $('#Unit').val('');
    $('#ApprovedQuantity').val('');
    $('#Remarks').val('');
    
    var validator = $("#FormRISEncode").validate();
    validator.destroy();
});

$(document).keypress(
  function(event){
    if (event.which == '13') {
      event.preventDefault();
    }
});