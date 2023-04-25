<?php
	require '../../Models/Connection/connection_wo_token.php';

	$result = $db->prepare("SELECT IFNULL(DATE_FORMAT(`reissueDate`, '%Y'), RIGHT(`reissueDate`, 4)) as `year` FROM `tblreissue` GROUP BY IFNULL(DATE_FORMAT(`reissueDate`, '%Y'), RIGHT(`reissueDate`, 4))");
	$result->execute();
	while ($row = $result->fetch()){
		$arrayYear[] = array('Year' => $row["year"]);
	}
	$result = null;

?>