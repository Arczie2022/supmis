$('#Category').on('change', function(){
    var val = $('#Category').val();
    $('#Search').html("");
    $('#Search').val("");
    $("#SearchID").val("");
    $('#Search').off('change');
    $(".select2-selection__rendered").html("");
    $('#Search').attr('type', 'text');
    var isdate = false;
    var _url = "";
    switch(val){
        case '1':
            _url = "DropDownBarcode.php";
        break;
        case '2':
            $('#Search').attr('type', 'date');
            isdate = true;
        break;
        case '3':
            _url = "DropDownEmployee.php";
        break;
        case '4':
            _url = "DropDownFund.php";
        break;
        case '5':
            _url = "DropDownOffices.php";
        break;
        case '6':
            _url = "DropDownPONo.php";
        break;
        case '7':
            _url = "DropDownIssuanceCode.php";
        break;
        case '8':
            _url = "DropDownProperty.php";
        break;
        case '9':
            _url = "";
        break;
        default:
            _url = "";
            $("#Search").select2('destroy'); 
            $('#Search').attr('disabled', 'disabled');
        break;
    }

    if(isdate){
        if ($('#Search').data('select2')) {
           $('#Search').select2('destroy');
        }
    }
    else
    {   
        if(_url == ""){
            var d = new Date();
            
            var data = [];
            
            for (var i = d.getFullYear(); i >= 2005; i--) {
                data.push({
                    id : i,
                    text: i
                });
            }
            $("#Search").select2({ 
                data: data
            }).on("change", function(){
                $("#SearchID").val($("#Search option:selected").val());
                $("#Search").val("HAHAH");
            });
        }
        else{
            $("#Search").select2({
                minimumInputLength: 3,
                ajax:{
                    type: "POST", 
                    url: "../../Models/DropDownIssued/"+_url,
                    dataType: "json",
                    data: function(params){
                        return {
                            cnsc_supmis: $("#cnsc_supmis").val(),
                            ID: params.term
                        };
                    },
                    processResults: function(data, params){
                        var select2Data = $.map(data, function (obj) {
                            obj.id = obj.ID;
                            obj.text = obj.Name;

                            return obj;
                        });
                        return {
                            results: select2Data
                        };
                        
                    }
                }
            }).on("change", function(e) {
                var lastValue = $("#Search option:last-child").val();
                var lastText = $("#Search option:last-child").text();

                $(".select2-selection__rendered").html(lastText);
                $(".select2-selection__rendered").attr("title", lastText);
                $("#Search").val(lastValue);
                $("#SearchID").val(lastValue);
            });
        }
    }
});