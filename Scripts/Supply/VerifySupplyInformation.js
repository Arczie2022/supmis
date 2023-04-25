function VerifySupplyInformation(){
	var ID = "";
	var Code = $('#Code').val();
	var Name = $('#Name').val();
	var Property = $('#Property').val();

    try{ID = $('#ID').val();}catch(err){}

    var userdata = {
    	'Code': Code,
    	'Name': Name,
    	'Property': Property,
    	'ID': ID
    };
    ajaxCustom("Supply/VerifySupplyInformation.php", userdata, function(data){
        if (parseInt(data[0].Code) == 0 || Code == '')
            $('#Code').css('color','black');  
        else
            $('#Code').css('color','red');  

        if (parseInt(data[0].Name) == 0)   
            $('#Name').css('color','black');  
        else
            $('#Name').css('color','red');  

        if (parseInt(data[0].Property) == 0)   
            $('#Property').css('color','black');  
        else
            $('#Property').css('color','red');  
    }, false, false);
}