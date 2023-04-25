<?php
	function DayCountToDate($para)
	{
        $date=new DateTime("0001-01-01");
        date_add($date,date_interval_create_from_date_string($para." days"));
        return date_format($date,"Y-m-d");
	}

?>