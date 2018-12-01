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
		}
	});
}

function envoiFormulaireMagasin(){
	console.log('Envoi du formulaire')
}
