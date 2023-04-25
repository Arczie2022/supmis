$(document).on('click', "#ChkSameOfficer", function(){
	if ($("#ChkSameOfficer").prop("checked")){
		var tempVal = "";
		$('.IssuedTo').each( function () {
		    tempVal = this.value; 
		    return false;
		});

		var loop = 0;
	
		$('.IssuedTo').each( function () {
			if (loop != 0){
		    	this.value = tempVal;
		    	this.disabled = true;
			}
			loop++;
		});
	}else{
		$('.IssuedTo').each( function () {
		    	this.disabled = false;
		});
	}
});

$(document).on('change', ".IssuedTo", function(){
	if ($("#ChkSameOfficer").prop("checked")){
		var tempVal = "";
		$('.IssuedTo').each( function () {
		    tempVal = this.value; 
		    return false;
		});

		var loop = 0;
	
		$('.IssuedTo').each( function () {
			if (loop != 0){
		    	this.value = tempVal;
		    	this.disabled = true;
			}
			loop++;
		});
	}
});