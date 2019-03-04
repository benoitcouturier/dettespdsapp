$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	
	var tp = $('#prodt_id')[0].innerHTML;
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/ProductType/find/'+tp,
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			var output = $('#prodt_name')[0];
			output.innerHTML = msg.prodt_id +' - ' + msg.prodt_name;
		}
	});
	
	
});
