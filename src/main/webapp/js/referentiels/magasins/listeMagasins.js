$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	console.log($("#btnRecherche"));
});


function toggleRecherche() {
	console.log('Toggle Recherche');
	$( "#divRecherche" ).toggle( "slow" );
}

function modalAjout() {
	console.log('Ajout Modal');
	var selectEmplacement = $('#numEmplacement')[0];
	console.log(selectEmplacement);
	// recupération tous les emplacements disponibles
	$.ajax({
		headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json'
	    },
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Emplacement/emplacementsDisponibles',
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			
			if(selectEmplacement.options.length != msg.length){
				selectEmplacement.options = null;
				for(var i=0 ; i< msg.length-1 ; i++){
					var opt = new Option();
					opt.value=msg[i].id;
					opt.innerHTML=msg[i].id;
				}	
			}
		}
	});
	
	// recupération tous les types de magasins
	$.ajax({
		headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json'
	    },
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/TypeMagasin/tous',
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
		}
	});
}

function envoiFormulaireMagasin(){
	console.log('Envoi du formulaire')
}
