$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
});


function supprimerMagasin(e){
	var obj = new Object();
	obj.id = e;
	
	$.ajax({
		// Type data
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json' 
		},
		dataType : 'json',

		// url API
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Magasin/delete',

		// Type method : POST PUT GET
		type: 'POST',  

		// parse Object to JSON 
		data: JSON.stringify(obj), 

		// MSG IF success
		success: function (msg) {  
			console.log(msg);  
			viderPage();
		}
	});
}

function viderPage(){
	
}