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
<?php require_once '../../Models/PrintedPage/PrintGenerateIIRUP.php'; ?>
<table border="1" class="a4paper-landscape">
<?php 
    session_start();
    $i = 0;
    foreach ($arrayIIRUP as $item) { 
        if($i == 0){
?>
    <thead>
        <tr class="appendix labeltable">
            <td colspan="18">Appendix 74&nbsp;<br/><br/></td>
        </tr>
        <tr class="centerTable labeltable paperHeader">
            <td colspan="18">INVENTORY AND INSPECTION REPORT OF UNSERVICEABLE PROPERTY</td>
        </tr>
        <tr class="centerTable ">
        	<td colspan="18">As at <?php echo date("M d, Y", strtotime($DateStart)); ?> to <?php echo date("M d, Y", strtotime($DateEnd)); ?><br/><br/><br/></td>
        </tr>
        <tr>
            <td class="labeltable" colspan="2">Entity Name:</td>
            <td class="labeltable" colspan="6">Camarines Norte State College</td>
            <td class="labeltable"  colspan="6"></td>
            <td class="labeltable"  colspan="2">Fund Cluster:</td>
            <td class="labeltable" colspan="2"><?php echo $FundName; ?> </td>
        </tr>
        <tr class="centerTable">
        	<td>&nbsp;</td>
            <td colspan="2" class="borderBottom"><?php echo ucwords($_SESSION["SUPMIS"]["supmis_name"]); ?></td>
            <td colspan="2" ></td>
            <td colspan="3" class="borderBottom"><?php echo $position; ?></td>
            <td></td>
            <td colspan="3" class="borderBottom"><?php echo $campus; ?></td>
            <td colspan="7"></td>
        </tr>
        <tr class="centerTable">
        	<td class="borderBottom"></td>
            <td class="borderBottom" colspan="2" style="font-style: italic; font-size: 14px;">(Name of Accoutable Officer)</td>
            <td class="borderBottom" colspan="2"></td>
            <td class="borderBottom" colspan="3" style="font-style: italic; font-size: 14px;">(Designation)</td>
            <td class="borderBottom"></td>
            <td class="borderBottom" colspan="3" style="font-style: italic; font-size: 14px;">(Station)</td>
            <td class="borderBottom" colspan="7"></td>
        </tr>
    </thead>
    <tbody>
    	<tr class="centerTable labeltable">
    		<td colspan="10" class="allBorder">INVENTORY</td>
    		<td colspan="8" class="allBorder">INSPECTION and DISPOSAL</td>
    	</tr>
        <tr class="centerTable labeltable" style="font-size: 13px; font-weight: 500; ">
            <td rowspan="2" class = "borderBottom2" style = 'max-width:60px;min-width:60px'>Date Acquired</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:100px;min-width:100px'>Particulars/ Articles</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:80px;min-width:80px;'>Property No.</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:60px;min-width:60px;'>Qty</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:60px;min-width:60px;'>Unit Cost</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:60px;min-width:60px;'>Total Cost</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:80px;min-width:80px;'>Accumulated Depreciation</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:80px;min-width:80px;'>Accumulated Impairment Losses</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:80px;min-width:80px;'>Carrying Amount</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:80px;min-width:80px;'>Remarks</td>
            <td colspan="5" class = "borderLeft2" style = 'max-width:300px;min-width:300px;'>DISPOSAL</td>
            <td rowspan="2" class = "borderBottom2" style = 'max-width:60px;min-width:60px;'>Appraised Value</td>
            <td colspan="2" style = 'max-width:120px;min-width:120px;'>RECORD OF SALES</td>
        </tr>
        <tr class="centerTable labeltable borderBottom2" style="font-size: 13px; font-weight: 500;">
            <td class="borderLeft2" style = 'max-width:60px;min-width:60px'>Sale</td>
            <td style = 'max-width:60px;min-width:60px'>Transfer</td>
            <td style = 'max-width:60px;min-width:60px'>Destruction</td>
            <td style = 'max-width:60px;min-width:60px'>Other (Specify)</td>
            <td style = 'max-width:60px;min-width:60px'>Total</td>
            <td style = 'max-width:60px;min-width:60px'>OR No.</td>
            <td style = 'max-width:60px;min-width:60px'>Amount</td>
        </tr>
		<tr class="centerTable labeltable allBorder" style="font-size: 13px; font-weight: 500;">
            <td style = 'max-width:60px;min-width:60px'>(1)</td>
            <td style = 'max-width:100px;min-width:100px'>(2)</td>
            <td style = 'max-width:80px;min-width:80px'>(3)</td>
            <td style = 'max-width:60px;min-width:60px'>(4)</td>
            <td style = 'max-width:60px;min-width:60px'>(5)</td>
            <td style = 'max-width:60px;min-width:60px'>(6)</td>
            <td style = 'max-width:80px;min-width:80px'>(7)</td>
            <td style = 'max-width:80px;min-width:80px'>(8)</td>
            <td style = 'max-width:80px;min-width:80px'>(9)</td>
            <td style = 'max-width:80px;min-width:80px'>(10)</td>
            <td class="borderLeft2" style = 'max-width:60px;min-width:60px'>(11)</td>
            <td style = 'max-width:60px;min-width:60px'>(12)</td>
            <td style = 'max-width:60px;min-width:60px'>(13)</td>
            <td style = 'max-width:60px;min-width:60px'>(14)</td>
            <td style = 'max-width:60px;min-width:60px'>(15)</td>
            <td style = 'max-width:60px;min-width:60px'>(16)</td>
            <td style = 'max-width:60px;min-width:60px'>(17)</td>
            <td style = 'max-width:60px;min-width:60px'>(18)</td>
        </tr>

<?php } ?>

        <tr style="height: fit-content; font-size: 13px; font-weight: 500;"  class="centerTable">
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["Date"]; ?></td>
            <td style = 'max-width:100px;min-width:100px'><?php echo $item["Articles"]; ?></td>
            <td style = 'max-width:80px;min-width:80px'><?php echo $item["Property"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'>1</td>
            <td class = "Cost" id = '<?php echo "Cost".$i ?>'  style = 'max-width:60px;min-width:60px' data-value = '<?php echo $item["value"] ?>'><?php echo $item["Cost"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["Cost"]; ?></td>
            <td class = "Depr" id = '<?php echo "Depr".$i ?>' style = 'max-width:80px;min-width:80px' contenteditable></td>
            <td class = "Loss" id = '<?php echo "Loss".$i ?>' style = 'max-width:80px;min-width:80px' contenteditable></td>
            <td class = "Carrying" id = '<?php echo "Carrying".$i ?>' style = 'max-width:80px;min-width:80px'></td>
            <td style = 'max-width:80px;min-width:80px'><?php echo $item["Remarks"]; ?></td>
            <td class="borderLeft2"  style = 'max-width:60px;min-width:60px'><?php echo $item["Sale"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["Transfer"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["Destruction"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["other"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["total"]; ?></td>
            <td style = 'max-width:60px;min-width:60px' contenteditable></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["OR"]; ?></td>
            <td style = 'max-width:60px;min-width:60px'><?php echo $item["Amount"]; ?></td>
        </tr>

<?php 
    if($i == ($countMe-1)){
?>

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
            <td class="borderLeft2"></td>
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
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="borderLeft2" ></td>
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
        <tr>
            <td colspan = "10" class="centerTable" style="font-size: 15px;"><br>I HEREBY request inspection and disposition, pursuant to Section 79 of PD 1445, of the property enumerated above.</td>
            <td colspan = "4" style="font-size: 15px; text-align: justify" class="borderLeft2">&emsp; &ensp; I CERTIFY that I have inspected each and every article enumerated in this report, and that the disposition made thereof was, in my judgement, the best for the public interest.</td>
            <td></td>
            <td colspan = "3" style="font-size: 15px; text-align: justify" >&emsp; &ensp; I CERTIFY that I have witnessed the disposition of the articles enumerated on this report this <span style="text-decoration: underline;">echo</span> day of <span style="text-decoration: underline;">echo</span>, <span style="text-decoration: underline;">echo</span>.</td>
        </tr>
        <tr style="font-size: 13px;">
            <td colspan="4" style="padding-left: 25px">Requested by:</td>
            <td colspan="6"  style="padding-left: 25px">Approved by:</td>
            <td colspan="8" class="borderLeft2"></td>
        </tr>
        <tr style="font-size: 13px;">
            <td colspan="10">&nbsp;</td>
            <td colspan="8" class="borderLeft2"></td>
        </tr>
        <tr style="font-size: 13px;" class="centerTable">
            <td></td>
            <td colspan="3" class="borderBottom2">echo</td>
            <td></td>
            <td colspan="4" class="borderBottom2">echo</td>
            <td></td>
            <td class="borderLeft2"></td>
            <td colspan="3" class="borderBottom2">echo</td>
            <td></td>
            <td colspan="3" class="borderBottom2">echo</td>
        </tr>
        <tr class="centerTable" style="font-size: 13px;">
            <td></td>
            <td colspan="3">(Signature over Printed Name of<br/> Accountable Officer)</td>
            <td></td>
            <td colspan="4">(Signature over Printed Name of<br/> Authorized Official)</td>
            <td></td>
            <td class="borderLeft2"></td>
            <td colspan="3">(Signature over Printed Name of<br/> Inspection Officer)</td>
            <td></td>
            <td colspan="3">(Signature over Printed Name of<br/> Witness)</td>
        </tr>
        <tr style="font-size: 13px;" class="centerTable">
            <td></td>
            <td colspan="3" class="borderBottom2">echo</td>
            <td></td>
            <td colspan="4" class="borderBottom2">echo</td>
            <td></td>
            <td colspan="8" class="borderLeft2"></td>
        </tr>
        <tr class="centerTable" style="font-size: 13px;">
            <td></td>
            <td colspan="3">(Designation of Accountable Officer)</td>
            <td></td>
            <td colspan="4">(Designation of Authorized Official)</td>
            <td></td>
            <td colspan="8" class="borderLeft2"></td>
        </tr>
   </tfoot>

<?php }$i++;} ?>

</table>
</div>
</body>
</html>

<script type="text/javascript">
    $(".Depr, .Loss").on("DOMSubtreeModified", function(){
        var id = this.id;
        var no = id.substring(4);

        var dep = BackToNumbers($("#Depr"+no).text());
        dep = dep == "" ? 0 : dep;
        var loss = BackToNumbers($("#Loss"+no).text());
        loss = loss == "" ? 0 : loss;
        var cost = $("#Cost"+no).data("value");
        var res = parseFloat(dep) + parseFloat(loss);
        res = cost - res;
        res = formatMoney(res);
        $("#Carrying"+no).text(res);
    });
</script>
<table>