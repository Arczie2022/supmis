<?php
	function ConvertUsefulLife($life){
		$count = explode(" ", $life)[0];
		$type = explode(" ", $life)[1];
		$total = -1;
		switch($type){
			case "Year":
				$total = intval($count) * 12;
			break;
			case "Month":
				$total = intval($count);
			break;
			case "Week":
				$total = intval($count) / 4;
			break;
			case "Day":
				$total = intval($count) / 30;
			break;
			default:
				$total = -1;
			break;
		}
		return $total;
	}
?>