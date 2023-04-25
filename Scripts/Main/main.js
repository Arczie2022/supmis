//ajaxCustom Ajax Method
	function ajaxMessage(message){
	    if(message == "Connection Error"){
	        swalMessage(
	            "503: SERVICE UNAVAILABLE", 
	            "The Server is temporarily unable to service your request due to maintenance downtime or capacity problem. Please Try Again Later.", 
	            "warning");
	    }
	    else if(message == "Request Timeout"){
	        swalMessage("408: REQUEST TIMEOUT", 
	            "For your security, the page will automatically refresh as there was no activity for more than 30 minutes.", 
	            "warning", true);
	    }
	    else if(message == "Session Timeout"){
	        swalMessage("440: SESSION EXPIRED", 
	            "For your security, Your account has been log out as there was no activity for more than 1 hour.", 
	            "warning", true);
	    }
	    else if(message == "Error Captcha"){
	        swalMessage("Are you a robot?", 
	            "Sorry, Google Recaptcha has detected you as a bot and restricted access. Please contact the MIS Programmer.", 
	            "error");
	    }
	    else if(message == "empty"){
	        swalMessage("No Records Found", "", "warning");
	    }
	    else if(message == "xuser"){
	        swalMessage("Invalid Username", "", "warning", true);
	    }
	    else if(message == "user not found"){
	        swalMessage("Employee not found", "", "warning");
	    }
	    else if(message == "xpass"){
	        swalMessage("Invalid Password", "", "warning", true);
	    }
	    else if(message == "Default"){
	        location.replace("../../View/User/Change_Password.php");
	    }
	    else if(message == "Invalid Length"){
	        swalMessage("Search atleast 3 Characters", "", "warning");
	    }
	    else if(message == "Balance of PONo"){
	        swalMessage("The Balance of the Purchase Order has been Changed.", "<h5>There have possibilities that there has a newly added transaction before you save your payment details. Please try again later.</h5>", "warning", false);
	    }
	    else if(message == "ID Error"){
	        swalMessage("No Valid ID", "Please contact the MIS Programmer. Thank You!", "error", false, function(){
	            swal.close();
	        });
	    }
	    else{
	        swalMessage("System Error", 
	            "Please contact the MIS Programmer. Thank you!", 
	            "error");
	    }
	}
	function ajaxCustom(_url, userdata, _callback = "", success = true, _async = true){
		console.clear();
		userdata["cnsc_supmis"] = $('#cnsc_supmis').val();
		$.ajax({
			xhr: function() {
				var xhr = new window.XMLHttpRequest();
				xhr.upload.addEventListener("progress", function(evt){
					// swalLoading("Retrieving the Data from Server");
				}, false);
				xhr.addEventListener("progress", function(evt){
					// swalLoading("Sending the Data to Server");
				}, false);
				return xhr;
	    	},
			type: "POST", 
			url: "../../Models/"+_url, 
			data:userdata,
	        async: _async,
			success: function(data){
				try{
					var tempData = JSON.parse(data); 
					try{var mess = tempData[0].message;}catch(err){mess = err;}
					if(mess == "success" || !success){
						_callback(tempData);
					}
					else if (mess == "No Equipment"){
						swalMessage("There has no Equipment in the selected Chart of Account.", "", "warning");
					}
					else if (mess == "No Stock Available"){
						swalMessage("No Stock Available", "<h6>"+tempData[0].supply+" is not Available</h6>", "warning");
					}
					else if (mess == "Cannot Change Stocks"){
						swalMessage("You cannot change the Issued Quantity", "<h6>The approved quantity of  "+tempData[0].supply+" cannot be altered due to a prior request in another stockroom.</h6>", "warning");
					}
					else if (mess == "cantedit"){
						swalMessage("", "<h5>You cannot edit the <span style = 'color: maroon'>"+tempData[0].supply+"</span> in the PO No.  <span style = 'color: maroon'>" +tempData[0].PONo + "</span>", "warning");
					}
					else if (mess == "cantdelete"){
						swalMessage("", "<h5>You cannot delete the <span style = 'color: maroon'>"+tempData[0].supply+"</span> in the PO No.  <span style = 'color: maroon'>" +tempData[0].PONo + "</span>", "warning");
					}
					else if (mess == "Update Stock Error RIS"){
						swalMessage("The Supplies/Equipment are out of Stocks", "<h6 style = 'text-align: justify; text-align-last: center;'><b>Note:</b> Another Employee has also requested <span style = 'color: maroon;'>"+tempData[0].supply+
							"</span> so there has changed in the Availability of Stock. "+
							"Remove the <span style = 'color: maroon;'>"+tempData[0].supply+
							"</span> in the <b>List of Requested Supplies</b> to reflect the changes of available stocks and Add it again.</h6>", "warning");
					}
		    		else {
		    			try{
			    			if(tempData[0].error["errorInfo"][0] == "23000"){
			    				var dupError = tempData[0].error["errorInfo"][2];
			    				dupError = dupError.split(' for key');
			    				swalMessage(dupError[0], "<h6>Note: Please Verify the Issuance Number/Code and Try Again.</h6>", "error", false);
			    			}else{
				    			ajaxMessage(mess);
			    			}
		    			}catch(err){
			    			ajaxMessage(mess);
		    			}
		    		}
				}catch(err){
					console.log(err);
					swalMessage("System Error", "<h5>Please contact the MIS Programmer. Thank you!</h5>", "error", true);
				}
			},
			error: function (jqXHR, exception){
				var msg = '', html = "<h5>Please contact the MIS Programmer. Thank you!</h5>";
		        if (jqXHR.status === 0) {
		            msg = 'No Internet Connection';
		            html = "";
		        } else if (jqXHR.status == 404) {
		            msg = 'Requested Page Not Found';
		        } else if (jqXHR.status == 500) {
		            msg = 'Internal Server Error.';
		        } else if (exception === 'parsererror') {
		            msg = 'Requested JSON parse failed.';
		        } else if (exception === 'timeout') {
		            msg = 'Time Out Error.';
		        } else if (exception === 'abort') {
		            msg = 'Ajax Request Aborted.';
		        } else {
		            // msg = 'Uncaught Error.\n' + jqXHR.responseText;
		            msg = "System Error";
		        }
				swalMessage(msg, html, "error", true);
			},
			complete:function(data){
				var tempData = JSON.parse(data.responseText);
				// console.clear();
				console.log(tempData); 
				if(tempData == null && success)ajaxMessage("empty");
			}
		});
	}
//Ajax Rules
	function addRule(ID, rule, data){
	    if($("#"+ID).length > 0){
	        if(rule != "regex"){
	            data = data.toString().includes("#") ? "\""+data+"\"" : data;
	            data = data == "No Stock" ? "\""+data+"\"" : data
	            data = data.toString().trim();
	            var obj = '{'+rule+':'+data+'}';
	            var jsonStr = obj.replace(/(\w+:)|(\w+ :)/g, function(matchedStr) {
	              return '"' + matchedStr.substring(0, matchedStr.length - 1) + '":';
	            });
	            obj = JSON.parse(jsonStr);
	            $("#"+ID).rules( "add", obj);
	        }else{
	            data = data.trim();
	            $("#"+ID).rules( "add", {
	                regex:data
	            });
	        }
	        return true;
	    }else{
	        console.log($("#"+ID));
	        console.log($("#"+ID).val()== undefined);
	        console.log($("#"+ID).val() == null);
	        return false;
	    }
	}
	function ajaxRules(id, exp, data, evt){
	    var splitID = id.split(" ");
	    var splitRule = exp.split(" ");
	    for (var loopID = 0; loopID < splitID.length; loopID++) {
	        $("#" + splitID[ loopID ]).rules( "remove", exp );
	        for (var loopRule = 0; loopRule < splitRule.length; loopRule++) {
	            if(!Array.isArray(data[loopRule])){
	                var ret = addRule(splitID[loopID], splitRule[loopRule], data[loopRule]);
	                if (!ret){
	                    evt.preventDefault();
	                    ajaxMessage("ID Error");
	                    return false;
	                }
	            }
	            else{
	                if(data[loopRule][loopID] != "" && data[loopRule][loopID] != undefined){
	                     var ret = addRule(splitID[loopID], splitRule[loopRule], data[loopRule][loopID]);
	                     if (!ret){
	                        evt.preventDefault();
	                        ajaxMessage("ID Error");
	                        return false;
	                    }
	                }
	            }
	        }
	    }
	    return true;
	}
//Data table Method 
	function JSTable(data, id, value, rowID = "", hidden = [], length = []){
	    if (data != null){
	        var table = $(id).DataTable();
	        table.clear().draw(); 
	        $(id).dataTable().fnDestroy();
	        var arr = [];
	        for (var i = 0; i < value.length; i++){
	            arr.push({
	                data: value[i]
	            });
	        }
	        if (rowID == ""){
	            var table = $(id).DataTable( {
	                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	                data: data,
	                columns: arr,
	                columnDefs: [{ 
	                    targets: '_all', 
	                    render: $.fn.dataTable.render.ellipsis()
	                }]
	            });
	        }else{
	            var table = $(id).DataTable( {
	                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	                data: data,
	                columns: arr ,
	                rowId: rowID,
	                columnDefs: [{ 
	                    targets: '_all', 
	                    render: $.fn.dataTable.render.ellipsis()
	                }]
	                
	            });
	        }
	        table.on( 'responsive-resize', function ( e, datatable, columns ) {
	            var count = columns.reduce( function (a,b) {
	                return b === false ? a+1 : a;
	            }, 0 );
	        } );
	        for (var i = 0; i < hidden.length; i++) {
	            table.columns(hidden[i]).visible(false);
	        }
	    }
	}
	function JSTable_WoRestrict(data, id, value, rowID = "", hidden = []){
	    if (data != null){
	        var table = $(id).DataTable();
	        table.clear().draw(); 
	        $(id).dataTable().fnDestroy();
	        var arr = [];
	        for (var i = 0; i < value.length; i++){
	            arr.push({data: value[i]});
	        }
	        if (rowID == ""){
	            var table = $(id).DataTable( {
	                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	                data: data,
	                columns: arr
	            });
	        }else{
	            var table = $(id).DataTable( {
	                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
	                data: data,
	                columns: arr ,
	                rowId: rowID
	            });
	        }
	        
	        table.on( 'responsive-resize', function ( e, datatable, columns ) {
	            var count = columns.reduce( function (a,b) {
	                return b === false ? a+1 : a;
	            }, 0 );
	        } );
	        for (var i = 0; i < hidden.length; i++) {
	            table.columns(hidden[i]).visible(false);
	        }
	    }
	}
	function DTContextMenu(_selector, _items, _callback){
	    var selected_row;
	    $(document).on("click", _selector  + " tbody tr" + "", function(){
	        var table = $(_selector).DataTable();
	        selected_row = table.row(this).data();
	        if(selected_row){
	            ChangeRowColor(_selector.replace("#", ""), this);
	        }   
	    });

	    $.contextMenu({
	        selector: _selector + " tbody tr", 
	        trigger: "left",
	        hideOnSecondTrigger: true,
	        callback: function (key, options){
	            _callback(key, selected_row);
	        },
	        events:{
	            preShow: function(){
	                if($(_selector  + " tbody tr").has("td.dataTables_empty").length > 0){
	                    $(_selector  + " tbody tr").contextMenu(false);
	                }else{
	                    $(_selector  + " tbody tr").contextMenu(true);                        
	                }
	            },
	            hide: function(options){
	                ChangeRowColor(_selector.replace("#", ""), "");
	                $(_selector  + " tbody tr").removeClass("selected_row");
	                return true;
	            }
	        },
	        items: {
	            "Select": {name: "Select", icon: "fa-mouse-pointer", "visible": checkArrayValue(_items, "Select")},
	            "View": {name: "View", icon: "fa-info", "visible": checkArrayValue(_items, "View")},
	            "Search": {name: "Search", icon: "fa-search", "visible": checkArrayValue(_items, "Search")},
	            "Add": {name: "Add", icon: "fa-plus-circle", "visible": checkArrayValue(_items, "Add")},
	            "Edit": {name: "Edit", icon: "fa-pencil", "visible": checkArrayValue(_items, "Edit")},
	            "Delete": {name: "Delete", icon: "fa-trash", "visible": checkArrayValue(_items, "Delete")},
	            "Move": {name: "Move", icon: "fa-clipboard", "visible": checkArrayValue(_items, "Move")},
	            "Copy": {name: "Copy", icon: "fa-clipboard", "visible": checkArrayValue(_items, "Copy")}
	        }
	    });   
	}    
	function ChangeRowColor(table, id){
		$('#'+table+' tbody tr').css("background-color", "white");
		$('#'+table+' tbody tr').css("color", "black");
		$('#'+table+' tbody tr').css("font-weight", "400");

		$(id).css("background-color", "goldenrod");
		$(id).css("color", "white");
		$(id).css("font-weight", "700");
	}
	function checkArrayValue(arrayItem, valueItem){
	    for (var i = 0; i < arrayItem.length; i++) {
	        if(arrayItem[i] == valueItem)
	            return true;
	    }
	    return false;
	}
//Date Method
	function monthDiff(from, to = "now") {
	    var months;
	    if (to == "now"){
		    to = Date.now();
		  	to = new Date(to);
	    }
	    from = new Date(from);
	    months = (to.getFullYear() - from.getFullYear()) * 12;
	    months -= from.getMonth();
	    months += to.getMonth();
	    return months <= 0 ? 0 : months;
	}
//Select2 
	function initialSelect2(id, link, argument){
		$("#"+id).select2({
			minimumInputLength: 3,
			placeholder: "Type to Search",
		    language: {
		        noResults: function () {
		            return "Search not found. Please Try another Word/Term";
		        },
		        searching: function () {
		            return "Searching, Please Wait for a while...";
		        }
		    },
			ajax:{
				type: "POST", 
				url: "../../Models/"+link,
				dataType: "json",
				delay: 250,
				data: function(params){
					return {
						cnsc_supmis: $("#cnsc_supmis").val(),
						ID: params.term
					};
				},
				processResults: function(data, params){
					var select2Data = $.map(data, function (obj) {
	                    obj.id = obj.ID;
	                    if (obj.Code == "" || obj.Code == undefined)
	                    	obj.text = obj.Name;
	                	else
	                    	obj.text = obj.Name + " (" + obj.Code + ")";

	                    return obj;
	                });

	                return {
	                    results: select2Data
	                };
				}
			}
		});
	}
	function Select2Default(selectId, id, text){
		var data = {
			id: id,
			text: text
		};
		if(id != "0" && id != 0){
			var newOption = new Option(data.text, data.id, false, false);
			$("#"+selectId).empty().append(newOption).trigger('change');
		}else{
			$("#"+selectId).empty();
		}
	}
	function newSelect2Option(selectId, id, text, code = "", no = 0){
		text = code == "" ? text : text + " (" + code + ")";
		var data = {
			id: id,
			text: text
		};
		var newOption = new Option(data.text, data.id, false, false);
		if(no == "0" && no == 0){
			var defaultOption = new Option("", "", true, true);
			$("#"+selectId).empty().append(defaultOption).trigger('change');
			$("#"+selectId+" option[value='']").attr('disabled', 'disabled');
		}
		$("#"+selectId).append(newOption).trigger('change');
	}
	function ConvertUsefulLife(life){
		var count = life.split(" ")[0];
		var type = life.split(" ")[1];
		var total = -1;
		switch(type){
			case "Year":
				total = parseInt(count) * 12;
			break;
			case "Month":
				total = parseInt(count);
			break;
			case "Week":
				total = parseInt(count) / 4;
			break;
			case "Day":
				total = parseInt(count) / 30;
			break;
			default:
				total = -1;
			break;
		}
		return total;
	}
	function newDatalistOption(datalist, value, text, id, no = 0, optionDisabled = true){
		
		if(no == 0 || no == "0"){
			if(optionDisabled == "none")
				$('#'+datalist).empty();
			else if (optionDisabled)
	        	$('#'+datalist).empty().append('<option disabled selected></option>');
	        else
				$('#'+datalist).empty().append('<option value="Not Applicable" data-id = "0" selected></option>');
		}
	    $('#'+datalist).append('<option value = "'+value+'" data-id = "'+id+'">' + text + '</option>');	
	}
//Swal Fire Method
	function swalLoading(swalTitle = "Loading. . ."){
		Swal.fire({          
	        title: swalTitle,
	        html: "<div class='lds-ellipsis'><div></div><div></div><div></div><div></div></div>",
	        allowEscapeKey: false,
	        allowEnterKey: false,
	        allowOutsideClick: false,
	        showConfirmButton: false,
	    });
	}
	function swalMessage(swalTitle, swalHTML, swalType = "success", swalReload = false, _callback = ""){
		Swal.fire({
	        title: swalTitle,
	        html: swalHTML,
	        allowEscapeKey: false,
	        allowEnterKey: false,
	        allowOutsideClick: false,
	        icon: swalType
	    }).then(function(isconfirm){
	    	if(_callback != "")_callback();
	    	if(swalReload) location.reload();
	    });
	}
	function swalConfirm(swalTitle, swalHTML, swalType = "info", _callbackConfirm = "", _callbackCancel = ""){
		Swal.fire({
			title: swalTitle,
	        html: swalHTML,
	        allowEnterKey: false,
			allowEscapeKey: false,
			allowOutsideClick: false,
			showCancelButton: true,
	        confirmButtonText: 'Yes',
	        cancelButtonText: 'No',
			icon: swalType
		}).then(function(isconfirm){
			if (isconfirm.dismiss === Swal.DismissReason.cancel){
	            if(_callbackCancel != "")_callbackCancel();
				else swal.close();
			}
			else{
	    		if(_callbackConfirm != "")_callbackConfirm();
	    		else swal.close();
			}
		});
	}
	function swalAddAgain(swalTitle, swalHTML, _callback = ""){
		Swal.fire({
			title: swalTitle,
	        html: swalHTML,
			allowEscapeKey: false,
	        allowEnterKey: false,
			allowOutsideClick: false,
			showCancelButton: true,
			confirmButtonText: 'Add Again?',
			cancelButtonText: 'No',
			icon: "success"
		}).then(function(isconfirm){
			if (isconfirm.dismiss === Swal.DismissReason.cancel){
	    		if(_callback != "")_callback();
				swal.close();
			}
			else{
				location.reload();
				swal.close();
			}
		});
	}
	function swalGenerate(swalTitle, swalHTML, confirmBtn, _url, _urlCont = "", swalReload = true){
		Swal.fire({
	        title: swalTitle,
	        html: swalHTML,
	        allowEscapeKey: false,
	        allowEnterKey: false,
	        allowOutsideClick: false,
	        showCancelButton: true,
	        confirmButtonText: confirmBtn,
	        cancelButtonText: 'Continue',
	        icon: "success"
	    }).then(function(isconfirm){
	        if (isconfirm.dismiss === Swal.DismissReason.cancel){
	            if(_urlCont == "") {
	            	if (swalReload) location.reload();
	            } 
	            else location.replace(_urlCont);
	        }
	        else{
	            window.open(_url,'_blank');
	            if(_urlCont == "") {
	            	if (swalReload) location.reload();
	            } 
	            else location.replace(_urlCont);
	        }
	    });	
	}
//Money Format Method
	function formatMoney(amount, id = "", decimalCount = 2, decimal = ".", thousands = ",") {
	  try {
	    var initial = amount;
	    decimalCount = Math.abs(decimalCount);
	    decimalCount = isNaN(decimalCount) ? 2 : decimalCount;

	    const negativeSign = amount < 0 ? "-" : "";
	    let i = parseInt(amount = Math.abs(Number(amount) || 0).toFixed(decimalCount)).toString();
	    let j = (i.length > 3) ? i.length % 3 : 0;
	    var returnVal = negativeSign + (j ? i.substr(0, j) + thousands : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands) + (decimalCount ? decimal + Math.abs(amount - i).toFixed(decimalCount).slice(2) : "");
	    if(id == "") return returnVal;
	    else{
	      if (returnVal == "0.00" && initial != "0"){
	        returnVal = "";
	        Swal.fire({
	            title: "Only Numbers are Accepted",
	            allowEscapeKey: false,
	            allowOutsideClick: false,
	            icon: 'warning'
	        }).then(function(isconfirm){
	          swal.close();
	        });
	      } 
	      if (negativeSign == "-") {
	        returnVal = "";
	        Swal.fire({
	            title: "Please enter a value greater than to 0",
	            allowEscapeKey: false,
	            allowOutsideClick: false,
	            icon: 'warning'
	        }).then(function(isconfirm){
	          swal.close();
	        });
	      }
	      $('#'+id).val(returnVal);
	    } 
	  } catch (e) {
	  }
	}
	function BackToNumbers(amount){
	  var temp = amount.split(",");
	  var res = "";
	  for(var i = 0; i < temp.length; i++){
	    res += temp[i];
	  }
	  return parseFloat(res);
	}
//toHex GETURL and Windows Open
	function toHex(str) {
		var result = '';
		for (var i=0; i<str.length; i++) {
			result += str.charCodeAt(i).toString(16);
		}
		return result;
	} 
	function GetURL(_url, ID, arg){
		var temp = "";
		for (var i = 0; i < ID.length; i++) {
			temp += ID[i] + "=" + toHex(toHex((arg[i]).toString())) + "&";
		}
		temp = temp.slice(0, -1);
		temp = _url + "?" + temp;
		
		return temp;
	}
	function windowOpen(_url){
		window.open(_url, '_blank');
	}
//Cookie
	function setCookie(cname, cvalue, exdays) {
	  var d = new Date();
	  d.setTime(d.getTime() + (exdays*24*60*60*1000));
	  var expires = "expires="+ d.toUTCString();
	  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}
	function getCookie(cname) {
	  var name = cname + "=";
	  var decodedCookie = decodeURIComponent(document.cookie);
	  var ca = decodedCookie.split(';');
	  for(var i = 0; i <ca.length; i++) {
	    var c = ca[i];
	    while (c.charAt(0) == ' ') {
	      c = c.substring(1);
	    }
	    if (c.indexOf(name) == 0) {
	      return c.substring(name.length, c.length);
	    }
	  }
	  return "";
	}
//Keyboard Shorcut
	$(document).ready(function(){
		$(document).keydown(function(e) {
			if ( e.which == null && (e.charCode != null || e.keyCode != null) ) {
			   e.which = e.charCode != null ? e.charCode : e.keyCode;
			}
			if (e.altKey){
				if(e.altKey && (e.key == "F1" || e.key == "F2"  || e.key == "F3"  || e.key == "F4" ||  e.key == "F5" || e.key == "F6"  || e.key == "F7"  || e.key == "F8"  || e.key == "F9"  || e.key == "F10"  || e.key == "F11"  || e.key == "F12" )){
					e.preventDefault();			
				}
				var indexKey = -1;

				var shorcut = [
					{"name": "ICS/PAR Issuances", "link": "../../View/Issuance/Issuance_of_ICS_PARE.php", "key": "I"},
					{"name": "Reissuance of ICS/PAR", "link": "../../View/Reissuance/Reissuance_of_Supply_and_Equipment.php", "key": "R"},
					{"name": "Pending Requests of RIS", "link": "../../View/Issuance/List_of_RIS.php", "key": "V"},
					{"name": "For Approval of RIS", "link": "../../View/Issuance/For_Approval_of_RIS.php", "key": "A"},
					{"name": "Encoding Old RIS", "link": "../../View/Encoding/EncodingRIS.php", "key": "Q"},
					{"name": "Encoding Old ICS", "link": "../../View/Encoding/EncodingICS.php", "key": "T"},
					{"name": "Encoding Old PARE", "link": "../../View/Encoding/EncodingPARE.php", "key": "U"},
					{"name": "My Equipment", "link": "../../View/User/My_Equipment.php", "key": "F1"},
					{"name": "Available Stocks", "link": "../../View/Supply/Available_Stock.php", "key": "F2"},
					{"name": "Available Stocks", "link": "../../View/Supply/Available_Stock.php", "key": "F2"},
					{"name": "List of Equipment in Warehouse", "link": "../../View/Warehouse/Warehouse_Stock.php", "key": "F3"},
					{"name": "Barcode Generator", "link": "../../View/Other/BarcodeGenerator.php", "key": "F5"},
					{"name": "List of Equipment under PO No", "link": "../../View/Reports_Other/List_of_PO_Number.php", "key": "F6"},
					{"name": "Reset Password", "link": "../../View/Other/Reset_Password.php", "key": "F7"},
					{"name": "Logs / Notification", "link": "../../View/Home/Logs.php", "key": "F8"},
					{"name": "Change Password", "link": "../../View/User/Change_Password.php", "key": "F9"},
					{"name": "Requesting Supply", "link": "../../View/Issuance/Requesting_Supply.php", "key": "F10"},
					{"name": "Requesting Equipment", "link": "../../View/Issuance/Requesting_Equipment.php", "key": "F11"},
					{"name": "Requesting for Purchase", "link": "../../View/Issuance/Requesting_Purchase.php", "key": "F12"},
					{"name": "Add Payment Details", "link": "../../View/PaymentDetails/Details_Add.php", "key": "A"},
					{"name": "Reconciliation (Accounting)", "link": "../../View/Issued/List_of_PO_Details.php", "key": "O"},
					{"name": "Approval of Purchase Request", "link": "../../View/Issued/List_of_PR_Approval.php", "key": "P"},
					{"name": "Returned Items (Supply Coordinator)", "link": "../../View/Return/Return_Item.php", "key": "C"},
					{"name": "Returned Items (SPMO)", "link": "../../View/Return/List_of_Returned_Item.php", "key": "S"},
					{"name": "List of Returned Equipment under Warranty Period", "link": "../../View/Return/List_of_Repair_Item.php", "key": "W"},
					{"name": "List of Parts to be Disposed", "link": "../../View/Dispose/List_of_Disposal_Parts.php", "key": "D"},
					{"name": "List of Equipment to be Disposed", "link": "../../View/Dispose/List_of_Disposal_Item.php", "key": "E"},
					{"name": "PPELC", "link": "../../View/LedgerCard/PPE.php", "key": "1"},
					{"name": "SLC", "link": "../../View/LedgerCard/SLC.php", "key": "2"},
					{"name": "Property Card", "link": "../../View/Reports/Property_Card.php", "key": "3"},
					{"name": "Stock Card", "link": "../../View/Reports/Stock_Card.php", "key": "4"},
					{"name": "RSMI", "link": "../../View/Reports/RSMI.php", "key": "5"},
					{"name": "RPCI", "link": "../../View/Reports/RPCI.php", "key": "6"},
					{"name": "WMR", "link": "../../View/Reports/WMR.php", "key": "7"},
					{"name": "IIRUP", "link": "../../View/Reports/IIRUP.php", "key": "8"}
				];

				for (var i = 0; i < shorcut.length; i++) {
					if (e.altKey && (e.key).toString().toLowerCase() == (shorcut[i]["key"]).toString().toLowerCase()){
						indexKey = i;
					}
				};
				if (indexKey != -1 && indexKey != "-1"){
					swalConfirm("Are you sure you want to Proceed?", "<h6><span style = 'color: maroon'>Note:</span> You have pressed the shorcut key <span style = 'color: maroon'>(alt+"+shorcut[indexKey]["key"]+
						")</span>, you are about to be redirected in the  <span style = 'color: maroon'>"+shorcut[indexKey]["name"]+
						"</span> Page. Your work in progress will not be saved and cannot be undone.</h6>", "warning", function(){
						location.replace(shorcut[indexKey]["link"]);
					});
				}
			}
		});
	});
	$(document).ready(function() {
//Input Type
	    $("form, textarea, input").attr("autocomplete", "off");
	    
	    $('input').on('keydown', function(){
	        if($('input').css('color') != 'black') $('input').css('color', 'black');
	        if($('input').css('color') == "rgb(255, 0, 0)") $('input').css('color', 'black');
	    });

		$('input[type="checkbox"]').on('click', function(){
		    var check = $(this).prop("checked");
		    var color = $(this).context.id;
		    if(check){
		        $('.' + color).css('background', "#F0F0F0");
		    }else{
		        $('.' + color).css('background', 'white');
		    }
		});
//Data Table Initialize
		var tableDeclaration = $('.table').DataTable({responsive: true});

	    $.fn.dataTable.render.ellipsis = function () {
		    return function ( data, type, row ) {
		    	if (data != null){
			        return type === 'display' && data.length > 30 ?
			            "<span title='" + data + "'>" + data + '... </span>' :
			            "<span title='" + data + "'>" + data  + '</span>';
		    	}
		    	return data;
		    }
		};
//Ajax Validation Rules
		$.validator.addMethod(
		    "InputTextBox",
		    function(value, element) {
		        var re = new RegExp(/^[a-zA-Z0-9ñÑ\n :,!@#\$%\^\&*\/\)\(+=._-]+$/g);
		        return this.optional(element) || re.test(value);
		    },
		    "Please check your input."
		);
		$.validator.addMethod(
		    "duplicate",
		    function(value, element) {
		        var col = element.style.color;
		        if(element.style.color == "red")
		            return false;
		        else
		            return true;
		    },
		    "Duplicate Entry/Value"
		);
		$.validator.addMethod(
		    "Stock",
		    function(value, element, param) {
		        var $otherElement = $(param).selector;
		        if($otherElement == "No Stock")
		            return false;
		        else
		            return true;

		    },
		    'No Stock Available.'
		);
		$.validator.addMethod(
		    "dateFormat",
		    function(value, element) {
		        var check = false;
		        var re = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
		        if( re.test(value)){
		            var adata = value.split('-');
		            var dd = parseInt(adata[2],10);
		            var mm = parseInt(adata[1],10);
		            var yyyy = parseInt(adata[0],10);
		            var xdata = new Date(yyyy,mm-1,dd);
		            if ( ( xdata.getFullYear() === yyyy ) && ( xdata.getMonth () === mm - 1 ) && ( xdata.getDate() === dd ) ) {
		                check = true;
		            }
		            else {
		                check = false;
		            }
		        } 
		        else {
		            check = false;
		        }
		        return this.optional(element) || check;
		    },
		    "Wrong date format (mm/dd/yyyy)"
		);
		$.validator.addMethod(
		    "datalist",
		    function(value, element, param) {
		        var $otherElement = $(param).selector;
		        if(param == "" || param == "-1")
		            return false;
		        else
		            return true;

		    },
		    'Invalid Value'
		);
//Context Menu
		$('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
			if (!$(this).next().hasClass('show')) {
				$(this).parents('.dropdown-menu').first().find('.show').removeClass('show');
			}
			var $subMenu = $(this).next('.dropdown-menu');
			$subMenu.toggleClass('show');
			$(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
				$('.dropdown-submenu .show').removeClass('show');
			});
			return false;
		});
//Other - Plugin Initialize
	    $('.select2').select2();
	  	$('[data-toggle="tooltip"]').tooltip()

		jQuery.validator.setDefaults({
		  	ignore: []
		});
	});