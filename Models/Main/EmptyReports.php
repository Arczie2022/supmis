<?php
	function EmptyReports($ID, $link, $array){
		if (GET($ID) == "" && $link != ""){
			echo "<script>alert('No Data Found');</script>";
			echo "<script>location.replace('../../View/".$link."');</script>";
		}
		if (empty($array) && $array != "none"){
			echo "<script>alert('No Data Found');</script>";
			if ($link != "") echo "<script>location.replace('../../View/".$link."');</script>";
		}
	}
?>