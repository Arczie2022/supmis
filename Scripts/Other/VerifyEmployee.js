function VerifyEmployee(){
    var ID = "";
    try{ID = $('#ID').val();}catch(err){}

    var userdata = {
        'Code': $('#Code').val(),
        'Name': $('#Name').val(),
        'ID': ID
    };
    ajaxCustom("Other/VerifyEmployee.php", userdata, function(data){
        if (parseInt(data[0].Code) == 0)
            $('#Code').css('color','black');  
        else
            $('#Code').css('color','red');  

        if (parseInt(data[0].Name) == 0)   
            $('#Name').css('color','black');  
        else
            $('#Name').css('color','red'); 
    }, true, false);
}