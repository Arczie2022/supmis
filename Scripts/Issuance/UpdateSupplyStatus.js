$('#btnAdd').on('click', function(evt){
    var formValidate = $('#FormUpdateStatusSupply').validate({
         submitHandler: function(form, e) {
             e.preventDefault();
             swalConfirm("Are you sure you want to Save?", "", "info", function(){
                swalLoading("Updating Status");

                var userdata = {
                     'RISID': $('#ID').val(),
                     'RISDETID': $('#risdetID').val(),
                     'Status': $('#Stat').val(),
                     'SupplyID': $('#SupplyID').val(),
                     'Supply': $('#Supply').val(),
                     'Description': $('#Description').val(),
                     'AvailableQuantity': $('#AvailableQuantity').val(),
                     'RequestedQuantity': $('#Quantity').val(),
                     'Remarks': $('#Remarks').val()
                 };
                 ajaxCustom("Issuance/UpdateSupplyStatus.php", userdata, function(data){
                    var userdata = {
                        'code': $('#rowID').val()
                    };
                    ajaxCustom("Issuance/GetListOfSupplyByRISCode.php", userdata, function(data){
                        JSTable(data, "#tblListRequestSupply", ["Quantity", "Unit", "Supply", "Desc", "Status", "Remarks"]);

                        $('#FormUpdateStatusSupply').css('display', 'none');
                        $('#tblListRequestSupply tbody tr').css("background-color", "white");
                        $('#tblListRequestSupply tbody tr').css("color", "black");
                        $('#tblListRequestSupply tbody tr').css("font-weight", "400");

                        swalGenerate("Updated Successfully", "", "Print Form", 
                            GetURL("../../View/PrintedPage/RIS.php", ["ID"], [$('#rowID').val()]), "", false);
                    });
                 });
             });
             formValidate.destroy();
        }
    }); 
    var Stock = parseInt($("#Stock").val());
    var Quantity = parseInt($("#Quantity").val());
    var Check = Stock > Quantity ? Quantity : Stock;
    
    ajaxRules("AvailableQuantity", "required number max", [true, true, Check], evt);
    ajaxRules("Remarks", "InputTextBox", [true], evt);
});