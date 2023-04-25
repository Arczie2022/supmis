function VerifyCheck(){
	var ID = "";
	var CheckNo = $('#CheckNo').val();

    try{ID = $('#ID').val();}catch(err){}

    var userdata = {
    	'Receipt': CheckNo,
    	'ID': ID
    };
    ajaxCustom("PaymentDetails/VerifyCheck.php", userdata, function(data){
        if (parseInt(data[0].Check) == 0 || CheckNo == '')
            $('#CheckNo').css('color','black');  
        else
            $('#CheckNo').css('color','red');  

    }, false, false);
}