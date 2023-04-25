<?php
	function DateToDayCount($parameter)
	{
        $earlier = new DateTime("0001-01-00"); 
        $later = new DateTime($parameter);
        $datediff =  $later->diff($earlier)->format("%a");
        return $datediff;
	}
?>