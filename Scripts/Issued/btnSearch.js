$('#btnAdd').on('click', function(evt){
    $('#divIssuance').css('display', 'none');
    $('#divBtn').css('display', 'none');
    $('#divIssuanceInfo').css('display', 'none');
    $('#divEquipmentInfo').css('display', 'none');
    $('#divSerial').css('display', 'none');
    $('#FormSearchIssuedSupply').validate({
        submitHandler: function(form, e) {
            e.preventDefault();
            var Category = $('#Category').val();
            var Type = $('#Type').val();
            var Search = $('#SearchID').val();
            var urldata = "";

            switch(Category){
                case '1':
                    urldata = "Issued/SearchIssuedByBarCode.php";
                    if(Type == "1") urldata = "";
                break;
                case '2':
                    urldata = "Issued/SearchIssuedByDate.php";
                    Search = $('#Search').val();
                break;
                case '3':
                    urldata = "Issued/SearchIssuedByEmployee.php";
                break;
                case '4':
                    urldata = "Issued/SearchIssuedByFundCluster.php";
                break;
                case '5':
                    urldata = "Issued/SearchIssuedByOffice.php";
                break;
                case '6':
                    urldata = "Issued/SearchIssuedByPONo.php";
                    if(Type == "1") urldata = "";
                break;
                case '7':
                    urldata = "Issued/SearchIssuedByIssuanceCode.php";
                break;
                case '8':
                    urldata = "Issued/SearchIssuedByProperty.php";
                    if(Type == "1") urldata = "";
                break;
                case '9':
                    urldata = "Issued/SearchIssuedByYear.php";
                break;
                default:
                    urldata = "";
                break;
            }
            if(urldata != ""){
                swalLoading("Searching Data");

                var userdata = {
                    'Type': Type,
                    'Search': Search,
                    'Category': Category
                };
                ajaxCustom(urldata, userdata, function(data){
                    var typeVal = Type;
                    typeVal = typeVal == 1 ? "RIS" : typeVal;
                    typeVal = typeVal == 2 ? "ICS" : typeVal;
                    typeVal = typeVal == 3 ? "PARE" : typeVal;

                    var table = $('#tblListIssuance').DataTable();
                    table.clear().draw();

                    $( table.column( 0 ).header() ).text( typeVal + ' Issued Date' );
                    $( table.column( 1 ).header() ).text( typeVal + ' Reissued Date' );
                    $( table.column( 2 ).header() ).text( typeVal + ' Code' );

                    JSTable(data, "#tblListIssuance", ["IssuedDate", "ReissuedDate", "Code", "Office"]);
                    
                    $('#divIssuance').css('display', '');
                    swal.close();
                });
            }
            else if (urldata == "" && Type == "1"){
                var CategoryID = $("#Category option[value = '"+Category+"']").text();
                swalConfirm("Category \""+CategoryID+"\" is not available in RIS", "", "warning", function(){
                    swal.close();
                });
            }
            else if (urldata == ""){
                swalConfirm("Input the Category First", "", "error", function(){
                    swal.close();
                });
            }
        }
    });
    ajaxRules("Search Type", "required InputTextBox", [true, true], evt);
    ajaxRules("Category", "required number min max", [true, true, 1, 9], evt);
});