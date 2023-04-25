$('#btnGenerate').on('click', function(){
	var type = $('#IssueType').val();
	var code = $('#IssueCode').val();``
    window.open('../../View/PrintedPage/'+type+'.php?ID='+toHex(toHex(code)),'_blank');

});