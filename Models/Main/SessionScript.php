<script type="text/javascript">
<?php
	session_start();
	echo 'var slevel = "'.$_SESSION["SUPMIS"]["supmis_level"].'";';
?>
function RestrictSession(){
	if(slevel == "0" || slevel == "9" || slevel == "8" || slevel == "10" ||  slevel == "7" || slevel == "2"|| slevel == "4"|| slevel == "5"){
		$('input').attr('disabled', 'true');
		$('select').attr('disabled', 'true');
		$('textarea').attr('disabled', 'true');

		$('input[type="submit"]').css('display', 'none');
		$('input[type="button"]').css('display', 'none');
	}
}

function RestrictSessionWCoordinator(){
	if(slevel == "0" || slevel == "9" || slevel == "7" || slevel == "8" || slevel == "10" || slevel == "2" || slevel == "5"){
		$('input').attr('disabled', 'true');
		$('select').attr('disabled', 'true');
		$('textarea').attr('disabled', 'true');

		$('input[type="submit"]').css('display', 'none');
		$('input[type="button"]').css('display', 'none');
	}
}
function RestrictSessionWStockRoom(){
	if(slevel == "0" || slevel == "9" || slevel == "7" || slevel == "8" || slevel == "10" || slevel == "2"|| slevel == "4"){
		$('input').attr('disabled', 'true');
		$('select').attr('disabled', 'true');
		$('textarea').attr('disabled', 'true');

		$('input[type="submit"]').css('display', 'none');
		$('input[type="button"]').css('display', 'none');
	}
}
function OnlyAccounting(){
	if(slevel == "0" || slevel == "9" || slevel == "7" || slevel == "8" || slevel == "10" || slevel == "2" || slevel == "3" || slevel == "4" || slevel == "5"){
		$('input').attr('disabled', 'true');
		$('select').attr('disabled', 'true');
		$('textarea').attr('disabled', 'true');

		$('input[type="submit"]').css('display', 'none');
		$('input[type="button"]').css('display', 'none');
	}
}
function RestrictSupplyOfficer(){
	if(slevel == "0" || slevel == "9" || slevel == "7" || slevel == "8" || slevel == "10" || slevel == "2" || slevel == "4" || slevel == "6"){
		$('input').attr('disabled', 'true');
		$('select').attr('disabled', 'true');
		$('textarea').attr('disabled', 'true');

		$('input[type="submit"]').css('display', 'none');
		$('input[type="button"]').css('display', 'none');
	}
}
</script>
