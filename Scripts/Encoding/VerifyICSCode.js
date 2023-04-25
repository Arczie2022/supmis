function VerifyICSCode(){
	var RISPPE = $('#RIS').val();
	var ICS = $('#Code1').val() + $("#Code2").val();

    var userdata = {
    	'RISPPE': RISPPE,
    	'ICS': ICS
    };
    ajaxCustom("Encoding/VerifyICSCode.php", userdata, function(data){
        if (parseInt(data[0].ICS) == 0 || ICS == '')
            $('#Code2').css('color','black');  
        else
            $('#Code2').css('color','red');  

        if (parseInt(data[0].RISPPE) == 0 || RISPPE == '')   
            $('#RIS').css('color','black');  
        else
            $('#RIS').css('color','red'); 
    }, false, false);
}