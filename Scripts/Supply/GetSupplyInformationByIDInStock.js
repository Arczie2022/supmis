var optionSupplier, optionFund, optionPAP, optionUnit, optionChart;
function SelectColor(id){
    if($(id).css("background-color")== "rgb(218, 165, 32)"){
        $(id).css("background-color", "white");
        $(id).css("color", "black");
        $(id).css("font-weight", "400");
    }
    else{
        $(id).css("background-color", "goldenrod");
        $(id).css("color", "white");
        $(id).css("font-weight", "700");
    }
}

$('#tblListSupply').on('click', 'tbody tr', function(){
    var table = $('#tblListSupply').DataTable();
    var row = table.row(this).data();
    if(row.ID != undefined){
        SelectColor(this);
        swalLoading("Retrieving Supply Information");
        var no = parseInt($("#StartNo").val());
        no += 1;
        $("#StartNo").val(no);
        if($('.' + row.ID).length == 0){
            var coldiv = "";
            var rowCode = row.Code == null ? "" : row.Code;
            var rowProperty = row.Property == null ? "" : row.Property;
            rowCode = rowProperty == "" ? rowCode : rowProperty;
            coldiv += AddMoreField(no, row.ID, rowCode, row.Name);
            
            $('#divStock').append(coldiv);

            if($("#checkSameInfo").prop("checked")){
                var fund, po, dr, desc, supplier, receipt, received, purpose, chart;
                
                $('._Fund').each( function () {
                    fund = this.value; 
                    return false;
                });

                $('._Supplier').each( function () {
                    supplier = this.value; 
                    return false;
                });

                $('._PO').each( function () {
                    po = this.value; 
                    return false;
                });

                $('._DR').each( function () {
                    dr = this.value; 
                    return false;
                });

                $('._Desc').each( function () {
                    desc = this.value; 
                    return false;
                });

                $('._Purpose').each( function () {
                    purpose = this.value; 
                    return false;
                });

                $('._Chart').each( function () {
                    chart     = this.value; 
                    return false;
                });


                $('._Received').each( function () {
                    received = this.value; 
                    return false;
                });

                $('._Receipt').each( function () {
                    receipt = this.value; 
                    return false;
                });
                var loop = 0;
                $('._Fund').each( function () {
                    this.value = fund;
                    if (loop != 0) this.disabled = true;
                    loop++;
                });

                loop = 0;
                $('._Supplier').each( function () {
                    this.value = supplier; 
                    if (loop != 0) this.disabled = true;
                    loop++;
                });

                loop = 0;
                $('._PO').each( function () {
                    this.value = po; 
                    if (loop != 0) this.disabled = true;
                    loop++;
                });

                loop = 0;
                $('._DR').each( function () {
                    this.value = dr; 
                    return false;
                });

                loop = 0;
                $('._Desc').each( function () {
                    this.value = desc; 
                    return false;
                });

                loop = 0;
                $('._Purpose').each( function () {
                    this.value = purpose; 
                    return false;
                });

                loop = 0;
                $('._Chart').each( function () {
                    this.value = chart; 
                    return false;
                });


                loop = 0;
                $('._Receipt').each( function () {
                    this.value = receipt; 
                    if (loop != 0) this.disabled = true;
                    loop++;
                });

                loop = 0;
                $('._Received').each( function () {
                    this.value = received; 
                    if (loop != 0) this.disabled = true;
                    loop++;
                });
            }
            $('#FormSupplyInformation').css( "display", "" );
        }else{
            var fundDisable = false;
            $('._Fund').each( function () {
                fundDisable = this.disabled; 
                return false;
            });

            $('.' + row.ID).remove();

            if($("#checkSameInfo").prop("checked")){
                var myID = "";
                $('._PO').each( function () {
                    myID = this.id; 
                    return false;
                });
                myID = myID.toString().substring(2);

                if($("#PO"+myID).prop("disabled")){
                    $("#PO"+myID).prop("disabled", false);
                    if (!fundDisable){
                        $("#Fund"+myID).prop("disabled", false);
                        $("#Supplier"+myID).prop("disabled", false);
                        $("#Received"+myID).prop("disabled", false);
                        $("#Receipt"+myID).prop("disabled", false);
                    }
                }
            }
            if($('#divStock').html().length == 263)
                $('#FormSupplyInformation').css( "display", "none" );
        }
        swal.close();
    }
});

function AddMoreField(no, ID, Code, Name){
    var display = Name + (Code == "" ? "" : " [" + Code + "]");
    var parentStart =  '<div class = "col-lg-12 input-group '+ID+'">';
    var parentEnd = '</div>';
    
    var divID = hiddenTextBox("ID"+no, ID, "_ID " + ID);

    var divPO = TextBox("PO No/Contract No", "PO"+no, "text", "", "_PO", "onchange = 'ChangeDataSameInfo(this, \"_PO\");'", "3");
    var divDR = TextBox("DR/SI No", "DR"+no, "text", "", "_DR", "onchange = 'ChangeDataSameInfo(this, \"_DR\");'", "3");
    var divReceipt = TextBox("Date of PO/Contract", "Receipt"+no, "date", "", "_Receipt", "onchange = 'ChangeDataSameInfo(this, \"_Receipt\");'", "3");
    var divReceive = TextBox("Date of DR/SI", "Received"+no, "date", "", "_Received", "", "3");
    
    var divSupplier = Select("Supplier", "Supplier"+no, "_Supplier", optionSupplier, "onchange = 'ChangeDataSameInfo(this, \"_Supplier\");'", "3");
    var divFund = Select("Fund Cluster", "Fund"+no, "_Fund", optionFund, "onchange = 'ChangeDataSameInfo(this, \"_Fund\");'", "3");
    var divPAP = Select("PAP", "PAP"+no, "_PAP", optionPAP, "onchange = 'ChangeDataSameInfo(this, \"_PAP\");'", "3");
    var divChart = Select("Supply Category", "Chart"+no, "_Chart", optionChart, "", "3");
    
    var divReplace = Select("Replace", "Replace"+no, "_Replace", 
        "<option selected disabled></option>\
        <option value = '0'>New Set of Item</option>\
        <option value = '1'>Replacement Parts</option>", "", "3");
    var divParts = TextArea("Parts to be Replaced", "Parts"+no, "", "_Parts", "disabled", "3");
    var divType = Select("Type", "Type"+no, "_Type", 
        "<option selected disabled></option>\
        <option value = 'Consumable'>Consumable Item</option>\
        <option value = 'Non-Consumable'>Non-Consumable Item</option>", "", "3");
    var divWarranty = TextBox("Warranty Period", "Warranty"+no, "number", "", "_Warranty", "placeholder='Enter the Value in No. of Month/s'", "3");

    var divDesc = TextArea("Description of "+display, "Desc"+no, "", "_Desc", "", "6");
    var divPurpose = TextArea("Purpose of "+display, "Purpose"+no, "", "_Purpose", "", "6");

    var divStock = TextBox("Stock", "Stock"+no, "number", "", "_Stock", "", "3");
    var divUnit = Select("Unit", "Unit"+no, "_Unit", optionUnit, "", "3");
    var divPrice = TextBox("Price", "Price"+no, "text", "", "_Price", "", "3");
    var divTotal = TextBox("Total", "Total"+no, "text", "", "", "disabled", "3");

    var first = parentStart + divPO + divReceipt + divDR + divReceive  + parentEnd;
    var second = parentStart + divSupplier + divFund + divPAP + divChart + parentEnd;
    var third = parentStart + divType + divWarranty + divReplace + divParts  + parentEnd;
    var fourth = parentStart + divStock + divUnit + divPrice + divTotal + parentEnd;
    var fifth = parentStart + divDesc + divPurpose + parentEnd;
    var header = '<h5 class = "'+ID+'" style = "color: white; background-color: black; padding: 10px; margin-top: 35px; margin-left: 5px;">'+display+'</h5>';

    return divID + header + first + second + third + fourth + fifth + "<br class = '"+ID+"' /><hr class = '"+ID+"' style = 'background-color: goldenrod'>";
}
function TextBox(div, id, type = "text", value = "", className = "", disabled = "", colspan = "4"){
    return '<div class = "col-lg-'+colspan+'" style = "margin-top: 2%">\
                <h6 class = "divLabel">'+div+':</h6>\
                <input id = "'+id+'" name = "'+id+'" type="'+type+'" value = "'+value+'" class = "'+className+' form-control" '+disabled+'/>\
            </div>';
}
function TextArea(div, id, value = "", className = "", disabled = "", colspan = "4"){
    return '<div class = "col-lg-'+colspan+'" style = "margin-top: 2%">\
                <h6 class = "divLabel">'+div+':</h6>\
                <textarea id = "'+id+'" name = "'+id+'" class = "'+className+' form-control" '+disabled+'>'+value+'</textarea>\
            </div>';
}
function Select(div, id, className = "", options, attr = "", colspan = "4"){
    return '<div class = "col-lg-'+colspan+'" style = "margin-top: 2%">\
                <h6 class = "divLabel">'+div+':</h6>\
                <select id = "'+id+'" name = "'+id+'" class = "'+className+' form-control" '+attr+'>'+options+'</select>\
            </div>';
}
function hiddenTextBox(id, value, className = ""){
    return '<input id = "'+id+'" name = "'+id+'" type="hidden" class = "'+className+'" value = "'+value+'"/>';
}

$(document).ready(function(){
    var userdata = {};
    
    optionSupplier = "<option selected disabled value = ''></option>";
    optionFund = "<option selected disabled value = ''></option>";
    optionPAP = "<option selected value = '0'></option>";
    optionUnit = "<option selected disabled value = ''></option>";
    optionChart = "<option selected disabled value = ''></option>";
    
    swalLoading("Retrieving List of Available Stocks");
    
    ajaxCustom("DropDown/DropDownChartOfAccount.php", userdata, function(data){
        for (var i = 0; i < data.length; i++) {
            optionChart += "<option value = '"+data[i].ID+"'>"+
            data[i].Name+" ("+data[i].Code+")</option>";
        }
    }, false, false);

    ajaxCustom("DropDown/DropDownFundInJs.php", userdata, function(data){
        for (var i = 0; i < data.length; i++) {
            optionFund += "<option value = '"+data[i].ID+"'>"+
            data[i].Name+" ("+data[i].Code+")</option>";
        }
    }, false, false);

    ajaxCustom("DropDown/DropDownPAPInJS.php", userdata, function(data){
        for (var i = 0; i < data.length; i++) {
            optionPAP += "<option value = '"+data[i].ID+"'>"+
            data[i].Name+" ("+data[i].Code+")</option>";
        }
    }, false, false);

    ajaxCustom("DropDown/DropDownSupplier.php", userdata, function(data){
        for (var i = 0; i < data.length; i++) {
            optionSupplier += "<option value = '"+data[i].ID+"'>"+
            data[i].Name+"</option>";
        }
    }, false, false);


    ajaxCustom("DropDown/DropDownUnitsInJS.php", userdata, function(data){
        for (var i = 0; i < data.length; i++) {
            optionUnit += "<option value = '"+data[i].name+"'>"+
            data[i].name+"</option>";
        }
    }, false, false);
    swal.close();
}); 
