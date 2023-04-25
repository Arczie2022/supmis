<?php

session_start();

if ($_SESSION["SUPMIS"]["supmis_level"] == "9" || $_SESSION["SUPMIS"]["supmis_level"] == "7" || $_SESSION["SUPMIS"]["supmis_level"] == "0"){
  $tblstatus = array(
    array('ID' => '-1', 'Name' => 'Show all logs'),
    array('ID' => '2', 'Name' => 'Add New Item / Category / Payment'),
    array('ID' => '3', 'Name' => 'Add Stocks'),
  );
}else if ($_SESSION["SUPMIS"]["supmis_level"] == "8"){
  $tblstatus = array(
    array('ID' => '-1', 'Name' => 'Show all logs'),
    array('ID' => '2', 'Name' => 'Add New Item / Category'),
    array('ID' => '3', 'Name' => 'Add Stocks'),
    array('ID' => '6', 'Name' => 'Issuance'),
    array('ID' => '7', 'Name' => 'Returned Equipment'),
  );
}
else{
  $tblstatus = array(
    array('ID' => '-1', 'Name' => 'Show all logs'),
    array('ID' => '1', 'Name' => 'Login'),
    array('ID' => '2', 'Name' => 'Add New Item / Category / Payment'),
    array('ID' => '3', 'Name' => 'Add Stocks'),
    array('ID' => '4', 'Name' => 'Request By Employee'),
    array('ID' => '5', 'Name' => 'Issuance by SPMO'),
    array('ID' => '6', 'Name' => 'Issuance by Supply Coordinator'),
    array('ID' => '7', 'Name' => 'Returned Equipment'),
    array('ID' => '8', 'Name' => 'For Disposal / Disposed Equipment'),
    array('ID' => '9', 'Name' => 'Update Item / Category Information'),
    array('ID' => '10', 'Name' => 'Barcode Generation'),
    array('ID' => '0', 'Name' => 'Add New Component for Buildings'),
    array('ID' => '11', 'Name' => 'Repair Equipment / Building')
  );
}

?>
