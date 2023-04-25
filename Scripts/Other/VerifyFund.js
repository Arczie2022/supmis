function VerifyFund(){
    var ID = "";
    var Code = $('#Code').val();
    var Name = $('#Name').val();
    var Legend = $('#Legend').val();

    try{ID = $('#ID').val();}catch(err){}

    var userdata = {
        'Code': Code,
        'Name': Name,
        'Legend': Legend,
        'ID': ID
    };
    ajaxCustom("Other/VerifyFund.php", userdata, function(data){
        if (parseInt(data[0].Code) == 0)
            $('#Code').css('color','black');  
        else
            $('#Code').css('color','red');  

        if (parseInt(data[0].Name) == 0)   
            $('#Name').css('color','black');  
        else
            $('#Name').css('color','red');  

        if (parseInt(data[0].Legend) == 0)   
            $('#Legend').css('color','black');  
        else
            $('#Legend').css('color','red');  
    }, true, false);
}