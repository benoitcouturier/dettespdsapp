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
	// select emplacement
	var selectEmplacement = $('#numEmplacement')[0];

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
				selectEmplacement.options.length=0;
				for(var i=0 ; i< msg.length-1 ; i++){
					var opt = new Option();
					opt.value=msg[i].id;
					opt.innerHTML=msg[i].id + "-" + msg[i].aile;
					selectEmplacement.appendChild(opt);
				}	
			}
		}
	});
	
	// recupération tous les types de magasins
	var selectType = $('#numType')[0];
	
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
			
			if(selectType.options.length != msg.length){
				selectType.options.length=0;
				for(var i=0 ; i< msg.length-1 ; i++){
					var opt = new Option();
					opt.value=msg[i].id;
					opt.innerHTML=msg[i].id + "-" + msg[i].type;
					selectType.appendChild(opt);
				}	
			}
		}
	});
}

function envoiFormulaireMagasin(){
	console.log('Envoi du formulaire');
	
	var nom = $('#nameMagasin')[0].value;
	var numEmplacement = $('#numEmplacement')[0].value;
	var numType= $('#numType')[0].value;
	var description = $('#description')[0].value;
	
	console.log(nom);
	console.log(numEmplacement);
	console.log(numType);
	console.log(description);
	
	if(nom != null){
		
	}else{
		alert('Entrer un nom de magasin.');
	}
	
}
