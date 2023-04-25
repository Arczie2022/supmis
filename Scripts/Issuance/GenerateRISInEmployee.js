$('#btnGenerate').on('click', function(){
	var code = $('#hiddenText').val();
    window.open(GetURL("../../View/PrintedPage/RIS.php", ["ID"], [code]),'_blank');

});