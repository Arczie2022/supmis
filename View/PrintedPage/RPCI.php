<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../Content/customizePrintPDF.css" />
    <style type="text/css" >
    </style>
    <?php require_once '../../View/Shared/Initialization.php';?>
</head>
<body>
<?php GenerateReportButton(true); ?>
<div class="bodyPaper" id = "bodyHere">
<?php require_once '../../Models/PrintedPage/PrintGenerateRPCI.php'; ?>
<table border="1" class="a4paper-landscape">
	<?php 
            $i = 0;
            foreach ($arrayRPCI as $item) { 
                if($i == 0){?>
    <thead>
        <tr class="appendix labeltable">
            <td colspan="10">Appendix 66&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="10">REPORT ON THE PHYSICAL COUNT OF INVENTORIES</td>
        </tr>
        <tr class="centerTable ">
            <td colspan="3"></td>
            <td colspan="4" class="borderBottom"><?php echo $TypeName; ?></td>
            <td colspan="3"></td>
        </tr>
        <tr class="centerTable ">
            <td colspan="3"></td>
            <td colspan="4" style="font-size: 11px;">(Type of Inventory Item)</td>
            <td colspan="3"></td>
        </tr>
        <tr class="centerTable labeltable">
            <td colspan="3"></td>
            <td style="text-align: right; padding-right: 25px">As at</td>
            <td colspan="2" class="borderBottom" style="font-weight: 500"><?php echo date("M d, Y", strtotime($StartName))." - ".date("M d, Y", strtotime($EndName)); ?></td>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td class="labeltable">Fund Cluster:</td>
            <td class="labeltable borderBottom centerTable" ><?php echo $FundName; ?></td>
            <td colspan="8"></td>
        </tr>
        <tr>
            <td class="labeltable">For which</td>
            <td class="centerTable labeltable borderBottom"><span style="font-size: 12px"><?php echo $_SESSION["SUPMIS"]["supmis_name"]; ?> ,</span></td>
            <td class="centerTable labeltable borderBottom"><span style="font-size: 12px"> <?php echo $Position; ?> ,</span></td>
            <td class="centerTable labeltable borderBottom" colspan="3"><span style="font-size: 12px">Camarines Norte State College (<?php echo $Campus; ?>), </span></td>
            <td class="labeltable" colspan="3"> is accountable, having assumed such accountability on</td>
            <td class="centerTable labeltable borderBottom" colspan="2" style="border-right: none !important;" contenteditable></td>
        </tr>
        <tr>
        	<td colspan="10" style="font-size: 5px">&nbsp;</td>
        </tr>
    </thead>
    <tbody>
        <tr class="centerTable labeltable borderTop2">
            <td rowspan="2" style = 'max-width:90px;min-width:90px'>Article</td>
            <td rowspan="2" style = 'max-width:200px;min-width:200px'>Description</td>
            <td rowspan="2" style = 'max-width:120px;min-width:120px'>Stock Number</td>
            <td rowspan="2" style = 'max-width:85px;min-width:85px'>Unit of Measure</td>
            <td rowspan="2" style = 'max-width:100px;min-width:100px'>Unit Value</td>
            <td style = 'max-width:90px;min-width:90px'>Balance Per Card</td>
            <td style = 'max-width:90px;min-width:90px'>On Hand Per Count</td>
            <td colspan="2" style = 'max-width:240px;min-width:240px'>Shortage/Overage</td>
            <td rowspan="2" style = 'max-width:180px;min-width:180px'>Remarks</td>
        </tr>
        <tr class="centerTable labeltable">
            <td style = 'max-width:90px;min-width:90px'>(Quantity)</td>
            <td style = 'max-width:90px;min-width:90px'>(Quantity)</td>
            <td style = 'max-width:90px;min-width:90px'>Quantity</td>
            <td style = 'max-width:150px;min-width:150px'>Value</td>
        </tr>
        <?php } ?>
        <tr style="height: fit-content;"  class="centerTable">
            <td style = 'max-width:90px;min-width:90px'><?php echo $item["Article"]; ?></td>
            <td style = 'max-width:200px;min-width:200px'><?php echo $item["Description"]; ?></td>
            <td style = 'max-width:120px;min-width:120px'><?php echo $item["Property"]; ?></td>
            <td style = 'max-width:85px;min-width:85px'><?php echo $item["Unit"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["SpecificUnit"]; ?></td>
            <td class = "onCard" id = "<?php echo 'onCard'.$i; ?>"  style = 'max-width:90px;min-width:90px'><?php echo $item["Balance"]; ?></td>
            <td class = "onHand" id = "<?php echo 'onHand'.$i; ?>" style = 'max-width:90px;min-width:90px' contenteditable></td>
            <td class = "bal" id = "<?php echo 'bal'.$i; ?>" style = 'max-width:85px;min-width:85px' ></td>
            <td class = "price" id = "<?php echo 'price'.$i; ?>" style = 'max-width:150px;min-width:150px' ></td>
            <td style = 'max-width:180px;min-width:180px' contenteditable></td>
        </tr>

    <?php if($i == ($countMe-1)){?>
        <tr class = "lastTableBody">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
    <tfoot>
        <tr class="labeltable">
        	<td colspan="2">Certified Correct by:</td>
        	<td colspan="2"></td>
        	<td colspan="2">Approved By:</td>
        	<td colspan="2"></td>
        	<td style="text-align: right">Verified by:</td>
        	<td></td>
        </tr>
        <tr class="centerTable" style="vertical-align: bottom;">
        	<td></td>
        	<td class="borderBottom">echo</td>
        	<td colspan="2"></td>
        	<td><br/><br/></td>
        	<td colspan="3" class="borderBottom">echo</td>
        	<td></td>
        	<td class="borderBottom">echo</td>
        </tr>
        <tr class="centerTable" style="font-size: 13px">
        	<td></td>
        	<td>Signature over Printed Name of</td>
        	<td colspan="2"></td>
        	<td></td>
        	<td colspan="3">Signature over Printed Name of Head of</td>
        	<td></td>
        	<td>Signature over Printed Name of COA</td>
        </tr>
        <tr class="centerTable" style="font-size: 13px">
        	<td></td>
        	<td>Inventory Committee Chair and</td>
        	<td colspan="2"></td>
        	<td></td>
        	<td colspan="3">Agency/Entity or Authorized Representative</td>
        	<td></td>
        	<td>Representative</td>
        </tr>
        <tr class="centerTable" style="font-size: 13px">
        	<td></td>
        	<td>Members</td>
        	<td colspan="2"></td>
        	<td></td>
        	<td colspan="3"></td>
        	<td></td>
        	<td></td>
        </tr>
    </tfoot>
   <?php }$i++;} ?>
</table>
</div>
<script type="text/javascript">
    $(".onHand").on("DOMSubtreeModified", function(){
        var id = this.id;
        var no = id.substring(6);
        var res = $("#onCard"+no).text() - this.innerHTML;
        $("#bal"+no).text(Math.abs(res));
        var arr = <?php echo json_encode($arrayRPCI); ?>;
        res = arr[no]["Price"] * res;
        res = formatMoney(Math.abs(res));
        $("#price"+no).text(res);
    });
</script>
</body>
</html>
<table>