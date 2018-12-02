$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	var typeMagasin = $('#idType')[0].innerHTML;
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/TypeMagasin/find/'+typeMagasin,
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			var spanType = $('#typeMagasin')[0];
			spanType.innerHTML = msg.id +' - ' + msg.type;
		}
	});

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
	var page = $('#page')[0];
	page.innerHTML = ' ';
	page.style = "margin-top : 60px;"
		page.innerHTML = '<a class="" href="Accueil.do">Revenir a l\'accueil</a>'
}