function VerifyRISCode(){
	var RIS = $('#Code1').val() + $("#Code2").val();

    var userdata = {
    	'RIS': RIS
    };
    ajaxCustom("Encoding/VerifyRISCode.php", userdata, function(data){
        if (parseInt(data[0].RIS) == 0 || RIS == '')
            $('#Code2').css('color','black');  
        else
            $('#Code2').css('color','red');  
    }, false, false);
}