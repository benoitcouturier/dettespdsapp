$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	
	// Type Magasin :
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
			// lorsque que le type est récupéré on l'affiche
			var spanType = $('#typeMagasin')[0];
			spanType.innerHTML = msg.id +' - ' + msg.type;
		}
	});
	
	
	// Emplacement :
	var emplacement = $('#idEmplacement')[0].innerHTML;
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Emplacement/find/'+emplacement,
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			// lorsque que le type est récupéré on l'affiche
			var spanEmplacement = $('#emplacement')[0];
			spanEmplacement.innerHTML = msg.id +' - ' + msg.aile + ' - ' + msg.superficie + 'm²' + ' -  x' +msg.importance;
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
	// lors de la suppression du magasin on vide la page
	var page = $('#page')[0];
	page.innerHTML = ' ';
	page.style = "margin-top : 60px;"
		page.innerHTML = '<a class="" href="Accueil.do">Revenir a l\'accueil</a>'
}