$('#btnNext_1').on('click', function(evt){
    var formValidate = $('#FormIssuanceICSPARE').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            $('#GeneralInformation').removeClass("active show");
            $('#navGeneralInformation').removeClass('active');

            $('#AddEquipment').addClass("active show");
            $('#navAddEquipment').addClass('active');

            $('#navTableIssuance').removeClass('disabled');

            formValidate.destroy();
        }
    });   
    ajaxRules("RISPPE", "required InputTextBox", [true, true], evt);
});


$('#btnNext_2').on('click', function(evt){
    var tableICS = $('#tblICS').DataTable();
    var rowICS = tableICS.rows().data();
    var tablePARE = $('#tblPARE').DataTable();
    var rowPARE = tablePARE.rows().data();

    var formValidate = $('#FormIssuanceICSPARE').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            var tableSelected = $("#tblListSelected").DataTable();
            var rowSelected = tableSelected.rows().data();
            if(rowSelected.length != 0 || rowICS.length != 0 || rowPARE.length != 0){
                var append = "";
                append += 
                    '<div class="form-check" style = "margin-bottom: 20px; margin-left: 0px">\
                        <input type = "checkbox" id = "ChkSameOfficer" name = "ChkSameOfficer" class = "form-check-input" />\
                        <label for = "ChkSameOfficer" class="form-check-label">Do you want to issue all the Equipment in the same Supply Officer?</label>\
                    </div>\
                ';

                swalLoading("Loading. . .");

                var rowData = [];
                var tempQuantity = 0;

                for (var i = 0; i < rowSelected.length; i++) {
                    tempQuantity += parseInt(rowSelected[i].Item);
                    for (var j = 0; j < rowSelected[i].Item; j++) {
                        rowData.push({
                            quantity: 1,
                            description: rowSelected[i].Description,
                            supply: rowSelected[i].Equipment
                        });   
                    }
                }

                if (tempQuantity != 0 && tempQuantity != "0"){
                    var appendSelect = "<option selected disabled value = ''></option>";
                    var userdata = {
                        ID: $("#Employee").val()
                    };
                    ajaxCustom("Issuance/GetSupplyOfficerByEmp.php", userdata, function(data){
                        for (var i = 0; i < data.length; i++) {
                            appendSelect += "<option value = '"+data[i].ID+"'>"+
                            data[i].Name+" ("+data[i].Office+")</option>";
                        }
                    }, false, false);
                }

                var tempSupply = "";
                for (var i = 1, j = 1; i <= tempQuantity; i++, j++) {
                    if (i == 1){
                        append+= '<h4 style = "color: maroon; font-weight: 600">'+rowData[i-1].supply+'</h4><br/>';
                        tempSupply = rowData[i-1].supply;
                    }else{
                        if (tempSupply != rowData[i-1].supply){
                            tempSupply = rowData[i-1].supply;
                            j = 1;
                            append+= '<hr style="height: 3px; background-color: goldenrod; "/><h4 style = "color: maroon; font-weight: 600">'+rowData[i-1].supply+'</h4><br/>';
                        }
                    }
                    append += '\
                        <h5 style = "color: maroon; margin-left: 10px;">Quantity: #'+j+'</h5><br/>\
                        <div class = "col-lg-11" style = "margin-top: 2%; margin-left: 20px;">\
                            <h6 class = "divLabel">'+i+'A. Barcode of '+rowData[i-1].supply+':</h6>\
                            <input id = "Serial_'+i+'" name = "Serial_'+i+'" type="text" class = "Serial form-control" />\
                        </div>\
                        <div class = "col-lg-11" style = "margin-top: 2%; margin-left: 20px;">\
                            <h6 class = "divLabel">'+i+'B. Description of '+rowData[i-1].supply+':</h6>\
                            <textarea id = "Remarks_'+i+'" name = "Remarks_'+i+'" class = "Remark form-control" disabled>'+rowData[i-1].description+'</textarea>\
                        </div>\
                        <div class = "col-lg-11" style = "margin-top: 2%; margin-left: 20px;">\
                            <h6 class = "divLabel">'+i+'C. Responsible Officer:</h6>\
                            <select id = "IssuedTo_'+i+'" name = "IssuedTo_'+i+'" class = "IssuedTo form-control">'+appendSelect+'</select>\
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
    if (rowICS.length == 0 && rowPARE.length == 0)
        ajaxRules("RISPPE", "required InputTextBox", [true, true], evt);
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

    var tableSelected = $("#tblListSelected").DataTable();
    var rowSelected = tableSelected.rows().data();

    var rowICS = [];
    var rowPAR = [];

    for (var i = 0; i < rowSelected.length; i++) {
        var Price = BackToNumbers(rowSelected[i].Price);
        var Quantity = parseInt(rowSelected[i].Item);
        var Supply = rowSelected[i].Equipment;
        var SupplyID = rowSelected[i].EquipmentID;
        
        for (var  j = 1;  j <= Quantity; j++) {
            tempSerialQuantity += 1;
            var Employee = $("#IssuedTo_"+ tempSerialQuantity + " option:selected").text();
            var EmployeeID = $("#IssuedTo_"+ tempSerialQuantity).val();
            if (Price < 50000){
                rowICS.push({
                    EquipmentName: Supply,
                    Serial: $('#Serial_'+ tempSerialQuantity).val(),
                    EmployeeName: Employee.split("(")[0],
                    EquipmentID: SupplyID,
                    EmployeeID: EmployeeID,
                    StockID: rowSelected[i].ID,
                    Description: rowSelected[i].Description,
                    risppedetID: rowSelected[i].risppedetID,
                    descID: rowSelected[i].descID
                });    
            }
            else{
                rowPAR.push({
                    EquipmentName: Supply,
                    Serial: $('#Serial_'+ tempSerialQuantity).val(),
                    EmployeeName: Employee.split("(")[0],
                    EquipmentID: SupplyID,
                    EmployeeID: EmployeeID,
                    StockID: rowSelected[i].ID,
                    Description: rowSelected[i].Description,
                    risppedetID: rowSelected[i].risppedetID,
                    descID: rowSelected[i].descID
                });    
            }
        }
    }
 
    var formValidate = $('#FormIssuanceICSPARE').validate({
        submitHandler: function(form, e) {
            e.preventDefault();  
            $('#SerialKey').removeClass("active show");
            $('#navSerialKey').removeClass('active');

            var tableICS = $('#tblICS').DataTable();
            tableICS.clear().draw();
            var tablePAR = $('#tblPARE').DataTable();
            tablePAR.clear().draw();
            
            if (rowSelected.length != 0){
                $('#TableIssuance').addClass("active show");
                $('#navTableIssuance').addClass('active'); 
            }

            JSTable(rowICS, "#tblICS", ["EquipmentName", "Description", "Serial", "EmployeeName"]);
            JSTable(rowPAR, "#tblPARE", ["EquipmentName", "Description", "Serial", "EmployeeName"]);

            formValidate.destroy();
        }
    });  
    var appendRules = "";
    for (var i = 1; i <= tempSerialQuantity; i++) {
        appendRules += "Serial_" + i + " IssuedTo_" + i + " ";
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

    Select2Default("RISPPE", "", "");
    $("#Employee").val("");
    JSTable([], "#tblListSelected", ["", "", "", "", ""]);
});


$('#btnNext_4').on('click', function(){
    var formValidate = $('#FormIssuanceICSPARE').validate({
        submitHandler: function(form, e) {
            e.preventDefault();

            var tblPARE = $('#tblPARE').DataTable();
            var dataPARE = tblPARE.rows().data();

            var tblICS = $('#tblICS').DataTable();
            var dataICS = tblICS.rows().data();


            if(dataICS.length == 0 && dataPARE.length == 0){
                swalMessage("Failed to Generate!", "Please Add Equipment First", "warning", false, function(){
                    swal.close();
                    formValidate.destroy();
                });
            }
            else{
                swalConfirm("Are you sure you want to Save?", "", "info", function(){
                    var PONo = $("#PONo").val();
                    var Supplier = $("#Supplier").val();
                    var Fund = $("#Fund").val();

                    var tblICS = $('#tblICS').DataTable();
                    var tblPARE = $('#tblPARE').DataTable();

                    var dataICS = tblICS.rows().data();
                    var dataPARE = tblPARE.rows().data();

                    var objICS = [], objPARE = [];

                    for (var i = 0; i < dataICS.length; i++) {
                        objICS.push({
                            Equipment: dataICS[i].EquipmentID,
                            EquipmentName: dataICS[i].EquipmentName,
                            Serial: dataICS[i].Serial,
                            Employee: dataICS[i].EmployeeID,
                            Stock: dataICS[i].StockID,
                            risppedetID: dataICS[i].risppedetID,
                            descID: dataICS[i].descID
                        });
                    }
                    for (var i = 0; i < dataPARE.length; i++) {
                        objPARE.push({
                            Equipment: dataPARE[i].EquipmentID,
                            EquipmentName: dataPARE[i].EquipmentName,
                            Serial: dataPARE[i].Serial,
                            Employee: dataPARE[i].EmployeeID,
                            Stock: dataPARE[i].StockID,
                            risppedetID: dataPARE[i].risppedetID,
                            descID: dataPARE[i].descID
                        });
                    }
                    objICS = objICS.sort((a, b) => (a.Employee > b.Employee) ? 1 : -1);
                    objPARE = objPARE.sort((a, b) => (a.Employee > b.Employee) ? 1 : -1);

                    swalLoading("Saving ICS/PAR Records");

                    var userdata = {
                        'PONo': PONo,
                        'RISPPE': $("#RISPPE").val(),
                        'Supplier': Supplier,
                        'Fund': Fund,
                        'ICS': objICS,
                        'PARE': objPARE
                    };
                    var tempICS = 0, tempPare = 0, swalAppend = "";
                    formValidate.destroy();
                    ajaxCustom("Issuance/GenerateICSAndPARE.php", userdata, function(data){
                        var icsCode = "<h4>ICS Code:</h4><div style = 'color: red'>";
                        var pareCode = "<h4>PARE Code:</h4><div style = 'color: red'>";
                        for (var i = 0; i < data.length; i++) {
                            var code = data[i].ID;
                            if(code.includes("ICS")){
                                tempICS+=1;
                                var _url = "onclick = 'windowOpen(" + '"' + GetURL("../../View/PrintedPage/ICS.php", ["ID"], [code]) + '"' +  ");'"; 
                                icsCode+="<input class = 'btn btn-outline-maroon' type = 'button' value = '"+code+"'" + _url +
                                 "data-toggle = 'tooltip' title = 'Click Me to Generate the ICS Form' data-placement = 'right'><br/>";
                            }
                            else{
                                tempPare+=1;
                                var _url = "onclick = 'windowOpen(" + '"' + GetURL("../../View/PrintedPage/PARE.php", ["ID"], [code]) + '"' +  ");'"; 
                                pareCode+="<input class = 'btn btn-outline-maroon' type = 'button' value = '"+code+"'" + _url+
                                 "data-toggle = 'tooltip' title = 'Click Me to Generate the PAR Form' data-placement = 'right'><br/>";
                            }
                        }

                        icsCode += "</div></h4><br/>";
                        pareCode += "</div></h4>";
                        swalAppend = (tempICS != 0 ? icsCode : "") + (tempPare != 0 ? pareCode : "");
                        swalAddAgain("Saved Successfully", swalAppend, function(){
                            location.reload();
                        });
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