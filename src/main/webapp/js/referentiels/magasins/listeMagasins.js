$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	console.log($("#btnRecherche"));
	$( "#divRecherche" ).toggle( "slow" );
	var rechercheType = $('#rechercheType')[0];
	var optChoose = new Option();
	optChoose.value=0;
	optChoose.innerHTML='Choisir un type ...';
	rechercheType.appendChild(optChoose);
	
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

			if(rechercheType.options.length != msg.length){
				
				for(var i=0 ; i< msg.length ; i++){
					var opt = new Option();
					opt.value=msg[i].id;
					opt.innerHTML=msg[i].id + "-" + msg[i].type;
					rechercheType.appendChild(opt);
				}	
			}
		}

	});
});


function toggleRecherche() {
	console.log('Toggle Recherche');
	$( "#divRecherche" ).toggle( "slow" );
}

function modalAjout() {
	console.log('Ajout Modal');
	// select emplacement

	var nom = $('#nameMagasin')[0];
	var description = $('#description')[0];
	nom.value='';
	description.value='';

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
				for(var i=0 ; i< msg.length ; i++){
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
				for(var i=0 ; i< msg.length ; i++){
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

	if(nom != "" && nom != " "){
		var obj = new Object();
		obj.nom = nom;
		obj.idEmplacement = numEmplacement;
		obj.idType = numType;
		obj.description = description;
		$.ajax({
			// Type data
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json' 
			},
			dataType : 'json',

			// url API
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/Magasin/create',

			// Type method : POST PUT GET
			type: 'POST',  

			// parse Object to JSON 
			data: JSON.stringify(obj), 

			// MSG IF success
			success: function (msg) {  
				console.log(msg);  
				rechargerListe();
			}
		});
		$("#closeModal").trigger("click");
		var listeMagasins = $('#listeMagasins')[0];
		listeMagasins.innerHTML= '<div class="loader"></div>';
		//rechargerListe();// aeffacer

	}else{
		alert('Entrer un nom de magasin.');
	}

}


function rechargerListe(){
	var listeMagasins = $('#listeMagasins')[0];
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Magasin/tous',
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			listeMagasins.innerHTML= '';
			for(var i=0; i< msg.length ; i++){
				var divMag = 
					'<div class="col-sm-4">'+
					'	<div class="panel panel-primary">'+
					'		<div class="panel-heading"><a class="lienColor" href="DetailMagasin.do?mag='+msg[i].id+'">'+ msg[i].nom +'</a></div>'+
					'		<div class="panel-body">'+
					'			<img src="https://placehold.it/150x80?text=IMAGE"'+
					'			class="img-responsive" style="width: 100%" alt="Image">'+
					'		</div>'+
					'		<div class="panel-footer">Ouvert 7j/7 en periode de Noel.</div>'+
					'	</div>'+
					'</div>';
				console.log(divMag);
				listeMagasins.innerHTML+=divMag;
			}
		}
	});


}

function rechercheType(){
	var rechercheType = $('#rechercheType')[0].value;
	var listeMagasins = $('#listeMagasins')[0];
	listeMagasins.innerHTML= '<div class="loader"></div>';
	
	if(rechercheType != 0){ // recherche pas vide
		$.ajax({
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
			dataType : "json",
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/Magasin/rechercheType/'+rechercheType,
			type : 'GET',
			crossDomain : true,
			success : function(msg) {
				console.log(msg);
				listeMagasins.innerHTML= '';
				for(var i=0; i< msg.length ; i++){
					var divMag = 
						'<div class="col-sm-4">'+
						'	<div class="panel panel-primary">'+
						'		<div class="panel-heading"><a class="lienColor" href="DetailMagasin.do?mag='+msg[i].id+'">'+ msg[i].nom +'</a></div>'+
						'		<div class="panel-body">'+
						'			<img src="https://placehold.it/150x80?text=IMAGE"'+
						'			class="img-responsive" style="width: 100%" alt="Image">'+
						'		</div>'+
						'		<div class="panel-footer">Ouvert 7j/7 en periode de Noel.</div>'+
						'	</div>'+
						'</div>';
					console.log(divMag);
					listeMagasins.innerHTML+=divMag;
				}
			}
		});
	}else{
		rechargerListe();
	}
	
}
