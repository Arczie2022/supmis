<?php
	function ScriptLink($link, $parent){
		echo '$.getScript("../../Scripts/'.$parent.'/'.$link.'");';
	}
	function Script($parent, $callback){
		echo '<script type="text/javascript">';
		$callback($parent);
		echo '</script>';
	}
	function parentTab($totalTab, $callback){
		echo '<div class="col-lg-9" style = "margin-bottom: 20px; padding-left: 0px; padding-right"><div class="tab-content">';
		$callback($totalTab);
		echo '</div></div>';
	}
	function parentNav($callback){
		echo '<div class="col-lg-3" style = "padding: 0px 10px 0px 0px;"><div class="nav flex-column nav-pills" role="tablist" aria-orientation="vertical">';
		$callback();
		echo '</div></div>';
	}
	function childNav($id, $display, $tabId, $active = false, $disabled = false){
		if($active) $varActive = "active";
		else if ($disabled) $varActive = "disabled";
		else $varActive = "";
		echo '<a class="nav-link nav-pills-link '.$varActive.'" id="'.$id.'" data-toggle="pill" href="#'.$tabId.'" role="tab" style = "margin-bottom: 5px">'.$display.'</a>';
	}
	function childTab($tabId, $callback, $no, $total, $active = false, $btnBackName = ""){
		if($active) $varActive = "show active";
		else $varActive = "";
		echo '<div class="tab-pane fade '.$varActive.'" id="'.$tabId.'" role="tabpanel">';
		$callback();
		if($no == 1) $btnBack = 'disabled';
		if($btnBackName == ""){
			echo '<button id = "btnBack_'.$no.'" type = "button" class="btn btn-outline-maroon submitButton" '.$btnBack.'><i class="fa fa-arrow-left"></i></button>';
		}
		else{
			echo '<button id = "btnBack_'.$no.'" type = "button" class="btn btn-outline-maroon submitButton" '.$btnBack.'>'.$btnBackName.'</button>';
		}
		if($no == $total){
			echo '<button id = "btnNext_'.$no.'" class="btn btn-outline-maroon submitButton" style = "float: right; margin-right: 15px;"><i class="fa fa-floppy-o"></i></button>';
		}else{
			echo '<button id = "btnNext_'.$no.'" class="btn btn-outline-maroon submitButton" style = "float: right; margin-right: 15px;"><i class="fa fa-arrow-right"></i></button>';
		}
        echo '</div>';
	}
	function verticalPills($callback){
		echo '<div class = "input-group">';
		$callback();
		echo '</div>';
	}
	function form($id, $button, $hidden = true, $callback = "", $col = "12", $btn = "btnAdd"){
		$none = $hidden ? "display: none" : "";
		echo '<form id = "'.$id.'" method="POST" style="width: 100%; '.$none.' " >';
		$callback();
		if ($button != ""){
			echo '
		    <div class="input-group col-lg-'.$col.'" style="justify-content: center;">
		        <input type="submit" class="btn btn-outline-maroon" id="'.$btn.'" name="'.$btn.'" value="'.$button.'" />
		    </div>
		    ';
		}
		echo '</form>';
	}
	function formAction($id, $button, $action, $blank = "", $hidden = true, $callback = "", $col = "12", $btn = "btnAdd"){
		$none = $hidden ? "display: none" : "";
		echo '<form id = "'.$id.'" method="POST" style="'.$none.'" action="'.$action.'" target="'.$blank.'">';
		$callback();
		if ($button != ""){
			echo '
		    <div class="input-group col-lg-'.$col.'" style="justify-content: center;">
		        <input type="submit" class="btn btn-outline-maroon" id="'.$btn.'" value="'.$button.'" />
		    </div>
		    ';
		}
		echo '</form>';
	}
	function colDiv($callback = "", $id = "",  $hidden = "", $col = 12){
		$divID = $id == "" ? "" : "id = '".$id."'";
		$css = $hidden == "hidden" ? "style = 'display: none'" : "style = '".$hidden."'";
		echo '<div class = "col-lg-'.$col.' input-group" '.$divID.' '.$css.'>';
		$callback();
		echo '</div>';
	}
	function PageHeader($text, $hsize = '2', $mbottom = 'auto', $mtop = 'auto', $id = ""){
		$id = $id == "" ? $id : " id = '".$id."' ";
		echo '
			<div style = "margin-bottom: '.$mbottom.'; margin-top: '.$mtop.';" class = "col-lg-12">
			    <h'.$hsize.$id.'>'.$text.'</h'.$hsize.'>
			    <hr style="height: 3px; background-color: goldenrod; "/>
			</div>
			';
	}
	function table($id, $header, $size, $arrayContent = "", $content = ""){
		echo '
			<div class = "col-lg-12">
			<TABLE id = "'.$id.'" class ="table" style = "text-align: center;">
			    <thead class="thead-maroon">
	    	';
	    	for ($i=0; $i < count($header); $i++) { 
	    		$width = $size[$i] == "hidden" ? "hidden" : 'style = "width: '.$size[$i].'"';
	    		echo '<th '.$width.'>'.$header[$i].'</th>';
	    	}
    	echo '</thead><tbody>';
    	if(!empty($arrayContent))
    	foreach ($arrayContent as $item) {
    	 	echo '<tr>';                
    		for ($i=0; $i < count($content); $i++) { 
    			if($size[$i] != "hidden") echo '<td>'.$item[$content[$i]].'</td>';
    			else echo '<td hidden>'.$item[$content[$i]].'</td>';
    		}
            echo '</tr>';
    	}
		echo '</tbody></TABLE></div>';
	}
	function Search($div, $id, $year = false, $col = 4, $month = false){ 
		$class = $year ? "input-group date col-lg-" : "input-group col-lg-";
		$class = $class . $col;
		$style = $col > 10 ? "0px" : "10px";
		echo '
			<div class="'.$class.'" style="margin-left: '.$style.'; padding: 0px">
			    <h6 class = "divLabel">'.($div == "" ? "`" : $div.':').'</h6>
		    	<input type="text" id="'.$id.'" name="'.$id.'" class="form-control">
			    <button id = "btn'.$id.'" type = "button" class = "btn btn-outline-maroon" style="margin-left: 5px"><i class = "fa fa-search"></i></button>
			</div>
		';
		if($month){
			echo '
			<script>
				$("#'.$id.'").datetimepicker({
				    format      :   "MMMM YYYY",
				    viewMode    :   "months"
				});
			</script>
			';
		}
		if($year){
			echo '
			<script>
				$("#'.$id.'").datetimepicker({
				    format      :   "YYYY",
				    viewMode    :   "years"
				});
			</script>
			';
		}
	}
	function DatePicker($div, $id, $year = false, $col = 4, $month = false){ 
		$col = $col == "0" ? "date" : "date col-lg-" . $col;
		$inputCol = $col == "0" ? "col-lg-3" : "";
		echo '
			<div class = "'.$col.'" style = "margin-top: 2%">
			    <h6 class = "divLabel" id = "lbl'.$id.'">'.($div == "" ? "`" : $div.':').'</h6>
			    <input id = "'.$id.'" name = "'.$id.'" type="text" class = "form-control '.$inputCol.'"/>
			    <label id = "'.$id.'-error" class="error" for = "'.$id.'" style = "display: none"></label>
		    </div>
		';
		if($month){
			echo '
			<script>
				$("#'.$id.'").datetimepicker({
				    format      :   "MMMM YYYY",
				    viewMode    :   "months"
				});
			</script>
			';
		}
		if($year){
			echo '
			<script>
				$("#'.$id.'").datetimepicker({
				    format      :   "YYYY",
				    viewMode    :   "years"
				});
			</script>
			';
		}
	}
	function TextBox($div, $id, $type = "text", $col = "0", $value = "", $style = "", $hidden = ''){
		$col = $col == "0" ? "" : " col-lg-" . $col;
		$inputCol = $col == "0" ? "col-lg-3" : "";
		$hidden = $type == "number" ? $hidden . " min = '0'" : $hidden;
		echo '
			<div class = "'.$col.'" style = "margin-top: 2%">
			    <h6 class = "divLabel" id = "lbl'.$id.'">'.($div == "" ? "*" : $div.':').'</h6>
			    <input id = "'.$id.'" name = "'.$id.'" type="'.$type.'" value = "'.$value.'" style = "'.$style.'" class = "form-control '.$inputCol.'" '.$hidden.'/>
			    <label id = "'.$id.'-error" class="error" for = "'.$id.'" style = "display: none"></label>
		    </div>
		';
	}
	function TextArea($div, $id, $col = "0", $disabled = ""){
		$col = $col == "0" ? "" : " col-lg-" . $col;
		$inputCol = $col == "0" ? "col-lg-3" : "";
		echo '<div class = "'.$col.'" style = "margin-top: 2%">';
		if($div != "") echo '<h6 class = "divLabel">'.($div == "" ? "`" : $div.':').'</h6>';
		echo '<textarea id = "'.$id.'" name = "'.$id.'" class = "form-control '.$inputCol.'" '.$disabled.' ></textarea>
		    </div>
		';
	}
	function TextAccounting($div, $id, $col = "0", $hidden = ''){
		$col = $col == "0" ? "" : " col-lg-" . $col;
		$inputCol = $col == "0" ? "col-lg-3" : "";
		echo '
			<div class = "'.$col.'" style = "margin-top: 2%">
			    <h6 class = "divLabel">'.($div == "" ? "`" : $div.':').'</h6>
			    <input id = "'.$id.'" name = "'.$id.'" type="text" value = "" class = "form-control '.$inputCol.'" onchange = "formatMoney(this.value, this.id);" '.$hidden.'/>
		    </div>
		';
	}
	function HiddenTextBox($id, $value = ""){
		echo '
			<input id = "'.$id.'" name = "'.$id.'" type="hidden" value = "'.$value.'"/>
			';
	}
	function CheckBox($div, $id){
		echo '<div class="form-check">
				<input type = "checkbox" id = "'.$id.'" name = "'.$id.'" class = "form-check-input" />
				<label for = "'.$id.'" class="form-check-label">'.$div.'</label>
			</div>';
	}
	function Select($div, $id, $arraySelect = "", $value = "", $dataid = "", $text = "", $col = "5", $select2 = false, $disabled = "", $optionDisabled = "disabled"){
		$classSelect = $select2 ? "select2" : ""; 
		$multiSelect = $select2 ? 'multiple="multiple"' : ""; 
		$style = $col == "5" ? "margin-left: 10px; margin-top: 2%;" : "margin-top: 2%;";
		$doubleText = explode("+", $text);
		echo '
			<div class="col-lg-'.$col.'" style="'.$style.'">
			    <h6 class = "divLabel" >'.($div == "" ? "`" : $div.':').'</h6>
		        <select id = "'.$id.'" name = "'.$id.'" class = "'.$classSelect.' form-control" '.$multiSelect.' '.$disabled.'>
		';
		if (!$select2) echo '<option '.$optionDisabled .' selected></option>';
            foreach ($arraySelect as $item) {
            	if(count($doubleText) == 1)
	                echo '<option value = "'.$item[$value].'" data-id = "'.$item[$dataid].'">'.$item[$text].'</option>';
	            else
	                echo '<option value = "'.$item[$value].'" data-id = "'.$item[$dataid].'">'.$item[$doubleText[0]].' ('.$item[$doubleText[1]].')</option>';
            }
		echo '
		        </select>
			    <label id = "'.$id.'-error" class="error" for = "'.$id.'" style = "display: none"></label>
		    </div>
    	';
	}
	function SelectHTML($div, $id, $value, $text, $col = "5", $select2 = false, $disabled = ""){
		$classSelect = $select2 ? "select2" : ""; 
		$multiSelect = $select2 ? 'multiple="multiple"' : ""; 
		$style = $col == "5" ? "margin-left: 10px; margin-top: 2%;" : "margin-top: 2%;";
		echo '
			<div class="col-lg-'.$col.'" style="'.$style.'">
			    <h6 class = "divLabel" >'.($div == "" ? "`" : $div.':').'</h6>
		        <select id = "'.$id.'" name = "'.$id.'" class = "'.$classSelect.' form-control" '.$multiSelect.' '.$disabled.' >
		';
		if (!$select2) echo '<option disabled selected></option>';
            for ($i=0; $i < count($value); $i++)
            {
                echo '<option value = "'.$value[$i].'">'.$text[$i].'</option>';
            }
		echo '
		        </select>
		    </div>
    	';
	}
	function Select2($div, $id, $url, $col = "5", $hidden = false, $disabled = ""){
		$style = $col == "5" ? "margin-left: 10px; margin-top: 2%;" : "margin-top: 2%;";
		$display = $hidden ? "display: none;" : "display: ;";
		$display .= $style;
		echo '
			<div class="col-lg-'.$col.'" style = "'.$display.'">
				<h6 class = "divLabel" >'.($div == "" ? "`" : $div.':').'</h6>
				<select class="form-control" id="'.$id.'" name = "'.$id.'" style = "'.$style.'" '.$disabled.'>
				</select>
				<label id = "'.$id.'-error" class="error" for = "'.$id.'" style = "display: none"></label>
			</div>
			<script type="text/javascript">
				$(document).ready(function(){
					initialSelect2("'.$id.'", "'.$url.'");
				});
			</script>
		';
	}
	function Select2WoutURL($div, $id, $col = "5", $hidden = false, $disabled = ""){
		$style = $col == "5" ? "margin-left: 10px; margin-top: 2%;" : "margin-top: 2%;";
		$display = $hidden ? "display: none;" : "display: ;";
		$display .= $style;
		echo '
			<div class="col-lg-'.$col.'" style = "'.$display.'">
				<h6 class = "divLabel" >'.($div == "" ? "`" : $div.':').'</h6>
				<select class="form-control select2" id="'.$id.'" name = "'.$id.'" style = "'.$style.'" '.$disabled.'>
				</select>
				<label id = "'.$id.'-error" class="error" for = "'.$id.'" style = "display: none"></label>
			</div>
		';
	}
	function button($id, $label, $col = 12, $style = "", $labelID = ""){
		$col = "col-lg-" . $col;
		$labelID = $labelID == "" ? "" : "id = '" . $labelID . "'";
		echo '
			<div '. $labelID .' class="input-group '.$col.'" style="justify-content: center; margin-bottom: 20px;">
			    <input type="button" class="btn btn-outline-maroon" id="'.$id.'" value="'.$label.'" style = "'.$style.'"/>
			</div>
			';
	}
	function buttonWoutDIV($label, $id, $submit = false, $style = ""){
		$button = $submit ? "submit" : "button";
		echo '<input type="'.$button.'" class="btn btn-outline-maroon" id="'.$id.'" style = "'.$style.'" value = "'.$label.'"/>';
	}
	function Modal($id, $callback, $buttonConfirm = "Save", $btnCancel = "Close"){
		echo '
		<div class="modal fade" id="'.$id.'"  role="dialog" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: red; text-shadow: 0 0px 0 #fff;">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      ';
		$callback();
		echo '
		      </div>
		      <div class="modal-footer" style="justify-content: center;">
		        <input type = "submit" id = "btn'.$id.'" class="btn btn-outline-maroon" style="min-width: 120px !important; width: auto !important; margin-top: auto !important;margin-bottom: auto !important;" value = "'.$buttonConfirm.'"></button>
		        <button type="button" class="btn btn-outline-maroon" data-dismiss="modal" style="width: 120px">'.$btnCancel.'</button>
		      </div>
		    </div>
		  </div>
		</div>
		';
	}
	function GenerateReportButton($landscape = false){
		echo '
			<div class = "input-group col-lg-12" style = "margin-top: 10px; margin-bottom: 30px; justify-content: center">
				<button  class = "btn btn-outline-maroon" id="cmd">Print Report</button>
				<div style = "margin: 10px;"></div>
				<button id = "btnExportButton" class = "btn btn-outline-maroon">Generate Excel</button>
				<a download="down.xls" id="btnExport" style = "display: none">Generate Excel</a>
			</div>
			<script>
			    $(document).ready(function(){
			        var innerWidth = window.innerWidth;
			        var outerWidth = window.outerWidth;
			        var clientWidth = document.body.clientWidth;

			        var innerHeight = window.innerHeight;
			        var outerHeight = window.outerHeight;
			        var clientHeight = document.body.clientHeight;

			        var Width = innerWidth;
			        var Height = innerHeight;

				    $("#cmd").click(function () {
				        var mywindow = window.open("", "print", "height="+ Height +",width=" + Width);

				        mywindow.document.write(\' <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF.css" media="print" />\');
				        ';
				        if ($landscape){
			        		echo 'mywindow.document.write(\' <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF-Landscape.css" media="print" />\');';
				        }
				        echo 'mywindow.document.write(\'<link rel="stylesheet" type="text/css" href="../../Reference/Bootsrap/bootstrap.css" media="print" />\');
				        mywindow.document.write($("#bodyHere").html());

				        setTimeout(function(){

				            mywindow.focus(); // necessary for IE >= 10*/
				            mywindow.document.close(); // necessary for IE >= 10
				            
				            mywindow.print();
				            mywindow.close();
				        },1000);


				        return true;
				    });

				    $("#btnExport").click(function (e) {
				        $(this).attr({
				            "download": "download.xls",
				                "href": "data:application/csv;charset=utf-8," + encodeURIComponent( $("#bodyHere").html())
				        });
				    });
				});

				$("#btnExportButton").on("click", function(){
					document.getElementById("btnExport").click();
				});
			</script>
		';
	}
?>