<?php
	function updateLogRemarks($OldValue, $NewValue, $Params, $PK, $Name = ""){
		$LogRemarks = [];
		for ($i=0; $i < count($OldValue); $i++) { 
			if($OldValue[$i] != $NewValue[$i]){
				if ($OldValue[$i] != ""){
					if ($Name == ""){
						array_push($LogRemarks, "PKID: ".$PK." - ".$Params[$i] . " has been changed from " .$OldValue[$i] ." to ". $NewValue[$i]);
					}else{
						array_push($LogRemarks, "PKID: ".$PK." - ".$Params[$i] . " has been changed from " .$OldValue[$i] ." to ". $NewValue[$i]. $Name);
					}
				}
				else{
					if ($Name == ""){
						array_push($LogRemarks, "PKID: ".$PK." - ".$Params[$i] . " has been changed to ". $NewValue[$i]);
					}else{
						array_push($LogRemarks, "PKID: ".$PK." - ".$Params[$i] . " has been changed to ". $NewValue[$i]. $Name);
					}
				}
			}
		}
		return $LogRemarks;
	}
?>