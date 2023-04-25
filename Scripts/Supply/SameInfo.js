$("#checkSameInfo").on("click", function(){
	if(this.checked){
		var fund, po, dr, desc, supplier, received, receipt, purpose, chart;
		$('._Fund').each( function () {
		    fund = this.value; 
		    return false;
		});

		$('._Supplier').each( function () {
		    supplier = this.value; 
		    return false;
		});

		$('._PO').each( function () {
		    po = this.value; 
		    return false;
		});

		$('._DR').each( function () {
		    dr = this.value; 
		    return false;
		});

		$('._Desc').each( function () {
		    desc = this.value; 
		    return false;
		});

		$('._Purpose').each( function () {
		    purpose = this.value; 
		    return false;
		});

		$('._Chart').each( function () {
		    chart = this.value; 
		    return false;
		});

		$('._Received').each( function () {
		    received = this.value; 
		    return false;
		});

		$('._Receipt').each( function () {
		    receipt = this.value; 
		    return false;
		});
		var loop = 0;
		$('._Fund').each( function () {
		    this.value = fund;
		    if (loop != 0) this.disabled = true;
	    	loop++;
		});

		loop = 0;
		$('._Supplier').each( function () {
		    this.value = supplier; 
		    if (loop != 0) this.disabled = true;
	    	loop++;
		});

		loop = 0;
		$('._PO').each( function () {
		    this.value = po; 
		    if (loop != 0) this.disabled = true;
	    	loop++;
		});

		loop = 0;
		$('._DR').each( function () {
		    this.value = dr; 
            return false;
		});

		loop = 0;
		$('._Desc').each( function () {
		    this.value = desc; 
            return false;
		});

		loop = 0;
		$('._Purpose').each( function () {
		    this.value = purpose; 
            return false;
		});

		loop = 0;
		$('._Chart').each( function () {
		    this.value = chart; 
            return false;
		});

		loop = 0;
		$('._Received').each( function () {
		    this.value = received; 
		    if (loop != 0) this.disabled = true;
	    	loop++;
		});

		loop = 0;
		$('._Receipt').each( function () {
		    this.value = receipt; 
		    if (loop != 0) this.disabled = true;
	    	loop++;
		});

	}else{
		var fundDisable = false;
		$('._Fund').each( function () {
		    fundDisable = this.disabled; 
		    return false;
		});

		$('._PO').each( function () {
		    this.disabled = false; 
		});


		if (!fundDisable){

			$('._Fund').each( function () {
			    this.disabled = false;
			});

			$('._Supplier').each( function () {
			    this.disabled = false; 
			});

			$('._Received').each( function () {
			    this.disabled = false; 
			});

			$('._Receipt').each( function () {
			    this.disabled = false; 
			});
		}
	}
});
function ChangeDataSameInfo(dis, type){
	var temp = dis.value;
	if (type == "_DR"){
		swalLoading("Checking the DR/SI Details");
		var myID = dis.id;
		myID = myID.toString().substring(2);

		var userdata = {
			'ID': temp
		};
		ajaxCustom("Supply/GetDRInfo.php", userdata, function(data){
			if (data[0].Date == "") {
				$("#Received"+myID).prop("disabled", false);

				$('._DR').each( function () {
					var dateID = this.id;
					dateID = dateID.toString().substring(2);
				    if (this.value == $("#DR"+myID).val() && myID != dateID){
						$("#Received"+myID).prop("disabled", true);
						$("#Received"+myID).val($("#Received"+dateID).val());
						return false;
				    } 
				});
				
				swal.close();
			}
			else{
				swalConfirm("DR/SI already Exists", "<h4>Do you want to retrieve the information?</h4><br/><h6>Note: If yes, the DR/SI Date cannot be edited.</h6>", "info", 
					function(){
						$("#Received"+myID).val(data[0].Date);
						$("#Received"+myID).prop("disabled", true);

						swal.close();
					},
					function (){
						$("#DR"+myID).val("");

						$("#Received"+myID).prop("disabled", false);
						swal.close();
					}
				);						
			}
		});
	}
	else if (type == "_PO"){
		swalLoading("Checking if the Purchase Order Number is already Existed");
		var myID = dis.id;
		myID = myID.toString().substring(2);

		var tempID = "";
		$('._PO').each( function () {
		    if (this.value == temp && this.id != dis.id){
		    	tempID = this.id;
		    	tempID = tempID.toString().substring(2);
		    }
		});		
		if (tempID != ""){
			$("#Fund"+myID).val($("#Fund"+tempID).val());
			$("#Supplier"+myID).val($("#Supplier"+tempID).val());
			$("#Received"+myID).val($("#Received"+tempID).val());
			$("#Receipt"+myID).val($("#Receipt"+tempID).val());
			if($("#checkSameInfo").prop("checked")){
				$('._PO').each( function () {
				    this.value = temp;
				});			
			}else{
				$('._PO').each( function () {
					var tempPOID = this.id;
					tempPOID = tempPOID.toString().substring(2);
				    if (this.value == $("#PO"+myID).val() && myID != tempPOID){
						$("#Receipt"+myID).prop("disabled", true);
						$("#Receipt"+myID).val($("#Receipt"+tempPOID).val());

						$("#Supplier"+myID).prop("disabled", true);
						$("#Supplier"+myID).val($("#Supplier"+tempPOID).val());

						$("#Fund"+myID).prop("disabled", true);
						$("#Fund"+myID).val($("#Fund"+tempPOID).val());

						return false;
				    } 
				});
			}
			swal.close();
		}else{
			var userdata = {
				'ID': temp
			};
			ajaxCustom("Supply/GetPOInfo.php", userdata, function(data){
				if (data[0].poID == "0") {
					$("#Fund"+myID).prop("disabled", false);
					$("#Supplier"+myID).prop("disabled", false);
					$("#Receipt"+myID).prop("disabled", false);
					if($("#checkSameInfo").prop("checked")){
						$('._PO').each( function () {
						    this.value = temp;
						});			
					}
					swal.close();
				}
				else{
					swalConfirm("Purchase Order Number already Exists", "<h4>Do you want to retrieve the information?</h4><br/><h6>Note: If yes, the supplier and the fund cluster  cannot be edited.</h6>", "info", 
						function(){
							if($("#checkSameInfo").prop("checked")){

								$('._PO').each( function () {
								    this.value = temp;
								});			

								$('._Fund').each( function () {
								    this.value = data[0].fundID;
								});

								$('._Supplier').each( function () {
								    this.value = data[0].supplierID; 
								});

								$('._Receipt').each( function () {
								    this.value = data[0].receiptDate; 
								});
							}else{
								$("#Fund"+myID).val(data[0].fundID);
								$("#Supplier"+myID).val(data[0].supplierID);
								$("#Receipt"+myID).val(data[0].receiptDate);
							}

							$("#Fund"+myID).prop("disabled", true);
							$("#Supplier"+myID).prop("disabled", true);
							$("#Receipt"+myID).prop("disabled", true);

							swal.close();
						},
						function (){
							$("#PO"+myID).val("");

							$("#Fund"+myID).prop("disabled", false);
							$("#Supplier"+myID).prop("disabled", false);
							$("#Receipt"+myID).prop("disabled", false);
							swal.close();
						}
					);						
				}
			}, false, false);
		}
	}
	else{
		if($("#checkSameInfo").prop("checked"))
			$('.'+type).each( function () {
			    this.value = temp;
			});
	}
}