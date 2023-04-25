function VerifySupplyOfficer(){
    var ID = "";
    var Code = $('#Code').val();
    var Name = $('#Name').val();

    try{ID = $('#ID').val();}catch(err){}

    var userdata = {
        'Code': Code,
        'Name': Name,
        'ID': ID
    };

    $.ajax({
        type: "POST", 
        url: "../../Models/Other/.php", 
        data:userdata, 
        async: false,
        success: function(data){
            var tempData = JSON.parse(data);

            if (parseInt(tempData[0].Code) == 0)
                $('#Code').css('color','black');  
            else
                $('#Code').css('color','red');  

            if (parseInt(tempData[0].Name) == 0)   
                $('#Name').css('color','black');  
            else
                $('#Name').css('color','red');  
        }
    });
}