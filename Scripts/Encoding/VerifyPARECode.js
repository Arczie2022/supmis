function VerifyPARECode(){
	var RISPPE = $('#RIS').val();
	var PARE = $('#Code1').val() + $("#Code2").val();

    var userdata = {
    	'RISPPE': RISPPE,
    	'PARE': PARE
    };
    ajaxCustom("Encoding/VerifyPARECode.php", userdata, function(data){
        if (parseInt(data[0].PARE) == 0 || PARE == '')
            $('#Code2').css('color','black');  
        else
            $('#Code2').css('color','red');  

        if (parseInt(data[0].RISPPE) == 0 || RISPPE == '')   
            $('#RIS').css('color','black');  
        else
            $('#RIS').css('color','red');  
    }, false, false);
}