<?php
	
	$arrayDisposal[] = array("Code" => "Auction", "Name" => "Public Auction");
	$arrayDisposal[] = array("Code" => "Sale", "Name" => "Sale Thru Negotiation");
	$arrayDisposal[] = array("Code" => "Barter", "Name" => "Barter");
	$arrayDisposal[] = array("Code" => "Transfer", "Name" => "Transfer to Other Government Agencies");
	$arrayDisposal[] = array("Code" => "Destruction", "Name" => "Destruction or Condemnation");
    sort($arrayDisposal);
    echo json_encode($arrayDisposal);
?>