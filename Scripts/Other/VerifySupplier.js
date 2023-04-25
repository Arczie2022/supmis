function VerifySupplier(){
    var ID = "";

    try{ID = $('#ID').val();}catch(err){}

    var userdata = {
        'Name': $('#Name').val(),
        'GEPS': $('#GEPS').val(),
        'DBP': $('#DBP').val(),
        'TIN': $('#TIN').val(),
        'ID': ID
    };

    ajaxCustom("Other/VerifySupplier.php", userdata, function(data){
        if (parseInt(data[0].Name) == 0)   
            $('#Name').css('color','black');  
        else
            $('#Name').css('color','red');  

        if (parseInt(data[0].TIN) == 0)   
            $('#TIN').css('color','black');  
        else
            $('#TIN').css('color','red');  

        if (parseInt(data[0].DBP) == 0)   
            $('#DBP').css('color','black');  
        else
            $('#DBP').css('color','red');  

        if (parseInt(data[0].GEPS) == 0)   
            $('#GEPS').css('color','black');  
        else
            $('#GEPS').css('color','red'); 
    }, true, false);
}