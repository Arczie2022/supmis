$('#btnNext_1').on('click', function(evt){
    VerifyICSCode();
    var formValidate = $('#FormIssuance').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            var dateApproved = $("#DateApproved").val();
            if (dateApproved < "2021-08-01"){
                $('#GeneralInformation').removeClass("active show");
                $('#navGeneralInformation').removeClass('active');

                $('#AddEquipment').addClass("active show");
                $('#navAddEquipment').addClass('active');

                $('#navTableIssuance').removeClass('disabled');

                JSTable([], "#tblIssued", ["", "", "", "", ""]);
            }else{
                swalMessage("July 31, 2021 is the last date of Encoding Old Records", "", "warning", false, function(){
                    swal.close();
                });
            }
            formValidate.destroy();
        }
    });   
    ajaxRules("PONo RIS Officer Employee", "required InputTextBox", [true, true], evt);
    ajaxRules("DateApproved", "required dateFormat", [true, true], evt);
    ajaxRules("Code2", "required InputTextBox number", [true, true, true], evt);
    ajaxRules("RIS Code2", "duplicate", [true], evt);
});


$('#btnNext_2').on('click', function(evt){
    var tableICS = $('#tblICS').DataTable();
    var rowICS = tableICS.rows().data();

    var formValidate = $('#FormIssuance').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            var tableSelected = $("#tblIssued").DataTable();
            var rowSelected = tableSelected.rows().data();
            if(rowSelected.length != 0 || rowICS.length != 0){
                var append = "";

                swalLoading("Loading. . .");

                var rowData = [];
                var tempQuantity = 0;

                for (var i = 0; i < rowSelected.length; i++) {
                    tempQuantity += parseInt(rowSelected[i].Quantity);
                    for (var j = 0; j < rowSelected[i].Quantity; j++) {
                        rowData.push({
                            ID: rowSelected[i].ID,
                            Supply: rowSelected[i].Supply,
                            SupplyID: rowSelected[i].SupplyID,
                            Description: rowSelected[i].Description,
                            Purpose: rowSelected[i].Purpose,
                            Quantity: rowSelected[i].Quantity,
                            Price: rowSelected[i].Price
                        });   
                    }
                }

                var tempSupply = "";
                for (var i = 1, j = 1; i <= tempQuantity; i++, j++) {
                    if (i == 1){
                        append+= '<h4 style = "color: maroon; font-weight: 600">'+rowData[i-1].Supply+'</h4><br/>';
                        tempSupply = rowData[i-1].Supply;
                    }else{
                        if (tempSupply != rowData[i-1].Supply){
                            tempSupply = rowData[i-1].Supply;
                            j = 1;
                            append+= '<hr style="height: 3px; background-color: goldenrod; "/><h4 style = "color: maroon; font-weight: 600">'+rowData[i-1].Supply+'</h4><br/>';
                        }
                    }
                    append += '\
                        <h5 style = "color: maroon; margin-left: 10px;">Quantity: #'+j+'</h5><br/>\
                        <div class = "col-lg-11" style = "margin-top: 2%; margin-left: 20px;">\
                            <h6 class = "divLabel">'+i+'A. Barcode of '+rowData[i-1].Supply+':</h6>\
                            <input id = "Serial_'+i+'" name = "Serial_'+i+'" type="text" class = "Serial form-control" />\
                        </div>\
                        <div class = "col-lg-11" style = "margin-top: 2%; margin-left: 20px;">\
                            <h6 class = "divLabel">'+i+'B. Description of '+rowData[i-1].Supply+':</h6>\
                            <textarea id = "Remarks_'+i+'" name = "Remarks_'+i+'" class = "Remark form-control" disabled>'+rowData[i-1].Description+'</textarea>\
                        </div><br/><br/>';
                }
                $('#AddEquipment').removeClass("show active");
                $('#navAddEquipment').removeClass('active');

                if (tempQuantity != 0 && tempQuantity != "0"){
                    $('#divSerialKey').empty().append(append);
                    $('#SerialKey').addClass("active show");
                    $('#navSerialKey').addClass('active');
                }else{
                    $('#TableIssuance').addClass("active show");
                    $('#navTableIssuance').addClass('active');
                }

                swal.close();
            }else{
                swalMessage("Please select an Equipment first", "", "info", false, function(){
                    swal.close();
                });
            }
            formValidate.destroy();
        }
    });   
});

$('#btnBack_2').on('click', function(){
    $('#GeneralInformation').addClass("active show");
    $('#navGeneralInformation').addClass('active');
    
    $('#AddEquipment').removeClass("active show");
    $('#navAddEquipment').removeClass('active');

    $('#navTableIssuance').addClass('disabled');
});

$('#navGeneralInformation').on('click', function(){
    $('#navTableIssuance').addClass('disabled');
});

$('#btnNext_3').on('click', function(evt){
    var tempSerialQuantity = 0;

    var tableSelected = $("#tblIssued").DataTable();
    var rowSelected = tableSelected.rows().data();
    var rowPAR = [];

    for (var i = 0; i < rowSelected.length; i++) {
        for (var  j = 1;  j <= rowSelected[i].Quantity; j++) {
            tempSerialQuantity += 1;
            rowPAR.push({
                ID: rowSelected[i].ID,
                Supply: rowSelected[i].Supply,
                SupplyID: rowSelected[i].SupplyID,
                Description: rowSelected[i].Description,
                Purpose: rowSelected[i].Purpose,
                Quantity: 1,
                Price: rowSelected[i].Price,
                Serial: $('#Serial_'+ tempSerialQuantity).val(),
                tableID: rowPAR.length
            });    
        }
    }

    var formValidate = $('#FormIssuance').validate({
        submitHandler: function(form, e) {
            e.preventDefault();  
            $('#SerialKey').removeClass("active show");
            $('#navSerialKey').removeClass('active');

 
            var tablePAR = $('#tblICS').DataTable();
            var rowAllPAR = tablePAR.rows().data();

            for (var i = 0; i < rowAllPAR.length; i++) {
                 rowPAR.push({
                    ID: rowAllPAR[i].ID,
                    Supply: rowAllPAR[i].Supply,
                    SupplyID: rowAllPAR[i].SupplyID,
                    Description: rowAllPAR[i].Description,
                    Purpose: rowAllPAR[i].Purpose,
                    Quantity: rowAllPAR[i].Quantity,
                    Price: rowAllPAR[i].Price,
                    Serial: rowAllPAR[i].Serial,
                    tableID: rowPAR.length
                });
            };
            tablePAR.clear().draw();

            if (rowSelected.length != 0){
                $('#TableIssuance').addClass("active show");
                $('#navTableIssuance').addClass('active'); 
            }

            JSTable(rowPAR, "#tblICS", ["Supply", "Description", "Serial", "Price"]);
            JSTable([], "#tblIssued", ["", "", "", "", ""]);
            formValidate.destroy();
        }
    });  
    var appendRules = "";
    for (var i = 1; i <= tempSerialQuantity; i++) {
        appendRules += "Serial_" + i + " ";
    }
    appendRules = appendRules.slice(0, -1);
    ajaxRules(appendRules, "required InputTextBox", [true, true], evt);
});

$('#btnBack_3').on('click', function(){
    $('#AddEquipment').addClass("active show");
    $('#navAddEquipment').addClass('active');

    $('#SerialKey').removeClass("active show");
    $('#navSerialKey').removeClass('active');
});


$('#btnBack_4').on('click', function(){
    $('#AddEquipment').addClass("active show");
    $('#navAddEquipment').addClass('active');
    $('#TableIssuance').removeClass("active show");
    $('#navTableIssuance').removeClass('active');

    JSTable([], "#tblIssued", ["", "", "", "", ""]);
});


$('#btnNext_4').on('click', function(){
    var formValidate = $('#FormIssuance').validate({
        submitHandler: function(form, e) {
            e.preventDefault();

            var tblICS = $('#tblICS').DataTable();
            var dataICS = tblICS.rows().data();

            if(dataICS.length == 0){
                swalMessage("Failed to Generate!", "Please Add Equipment First", "warning", false, function(){
                    swal.close();
                    formValidate.destroy();
                });
            }
            else{
                swalConfirm("Are you sure you want to Save?", "", "info", function(){
                    var DateApproved = $("#DateApproved").val();
                    var ICS = $("#Code1").val() + $("#Code2").val();
                    var RIS = $("#RIS").val();
                    var PONo = $("#PONo").val();
                    var Fund = $("#Fund").val();
                    var Supplier = $("#Supplier").val();
                    var Officer = $("#Officer").val();
                    var Employee = $("#Employee").val();

                    var tblICS = $('#tblICS').DataTable();
                    var dataICS = tblICS.rows().data();
                    var objICS = [];

                    for (var i = 0; i < dataICS.length; i++) {
                        objICS.push({
                            EquipmentName: dataICS[i].Supply,
                            Equipment: dataICS[i].SupplyID,
                            Serial: dataICS[i].Serial,
                            ID: dataICS[i].ID
                        });
                    }

                    swalLoading("Saving PAR Records");

                    var userdata = {
                        'DateApproved': DateApproved,
                        'ICSCode': ICS,
                        'RIS': RIS,
                        'PONo': PONo,
                        'Fund': Fund,
                        'Supplier': Supplier,
                        'Officer': Officer,
                        'Employee': Employee,
                        'ICS': objICS
                    };
                    var tempICS = 0, swalAppend = "";
                    formValidate.destroy();
                    ajaxCustom("Encoding/GenerateICS.php", userdata, function(data){
                       swalGenerate("Successfully Saved", "", "Print Form", 
                            GetURL("../../View/PrintedPage/ICS.php", ["ID"], [ICS]));
                    }, true, true);
                });
            }

        }
    });  
});

$(document).keypress(
  function(event){
    if (event.which == '13') {
      event.preventDefault();
    }
});