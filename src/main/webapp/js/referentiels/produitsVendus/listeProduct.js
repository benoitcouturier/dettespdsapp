$(document).ready(function(){
	$('#listeLienNav')[0].children[2].setAttribute('class','active');
	reload();
	

	var ptid = $('#findtype')[0];
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/ProductType/tous',
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);

			if(ptid.options == null || ptid.options.length != msg.length){
				ptid.options == null;
				for(var i=0 ; i< msg.length ; i++){
					var opt = new Option();
					opt.value=msg[i].prodt_id;
					opt.innerHTML=msg[i].prodt_id + "-" + msg[i].prodt_name;
					ptid.appendChild(opt);
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

	var nom = $('#product_name')[0];
	var prix = $('#product_price')[0];
	var qte = $('#product_quantity')[0];
	var sid = $('#store_id')[0];
	var psid = $('#prods_id')[0];
	var ptid = $('#prodt_id')[0];
	var departement = $('#departement')[0];
	nom.value='';
	prix.value='';
	qte.value='';
	sid.value='';
	psid.value='';
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/ProductType/tous',
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);

			if(ptid.options.length != msg.length){
				ptid.options.length=0;
				for(var i=0 ; i< msg.length ; i++){
					var opt = new Option();
					opt.value=msg[i].prodt_id;
					opt.innerHTML=msg[i].prodt_id + "-" + msg[i].prodt_name;
					ptid.appendChild(opt);
				}	
			}
		}
	});
	departement.value='';

}

function envoiFormulaireProduct(){
	console.log('Envoi du formulaire');

	var nom = $('#product_name')[0].value;
	var prix = $('#product_price')[0].value;
	var qte= $('#product_quantity')[0].value;
	var sid = $('#store_id')[0].value;
	var psid = $('#prods_id')[0].value;
	var ptid = $('#prodt_id')[0].value;
	var departement = $('#departement')[0].value;

	console.log(nom);
	console.log(prix);
	console.log(qte);
	console.log(sid);
	console.log(psid);
	console.log(ptid);
	console.log(departement);

	if(nom != "" && nom != " "){
		var obj = new Object();
		// attribut de l'objet java
		obj.pname = nom;
		obj.price = prix;
		obj.pqte = qte;
		obj.sid = sid;
		obj.psid = psid;
		obj.ptid = ptid;
		obj.departement = departement;
		$.ajax({
			// Type data
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json' 
			},
			dataType : 'json',

			// url API
			//url : 'http://192.168.20.3:8080/ApiRest/RestGT/Product/create',
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/Product/create',
			// Type method : POST PUT GET
			type: 'POST',  

			// parse Object to JSON 
			data: JSON.stringify(obj), 

			// MSG IF success
			success: function (msg) {  
				console.log(msg);  
			}
		});
		$("#closeModal").trigger("click");
		//var listeProduct = $('#listeProduct')[0];
		//listeProduct.innerHTML= '<div class="loader"></div>';
		//rechargerListe();// aeffacer

	}else{
		alert('Veuillez saisir le nom du produit!');
	}

}

function reload(){
	var lp = $('#listproduct')[0];
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Product/tous',
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			lp.innerHTML= '';
			for(var i=0; i< msg.length ; i++){
				var divProd = 
					'<div class="col-sm-4">'+
					'	<div class="panel panel-primary">'+
					'		<div class="panel-heading"><a class="lienColor" href="DetailProduct.do?prod='+msg[i].pid+'">'+ msg[i].pname +'</a></div>'+
					'		<div class="panel-body">'+
					'			<img src="https://placehold.it/150x80?text=IMAGE"'+
					'			class="img-responsive" style="width: 100%" alt="Image">'+
					'		</div>'+
					'		<div class="panel-footer">Possibilite de voir emplacement precis du produit</div>'+
					'	</div>'+
					'</div>';
				console.log(divProd);
				lp.innerHTML+=divProd;
			}
		}
	});


}

function findtype(){
	$('#findname')[0].value = "";
	var findtype = $('#findtype')[0].value;
	var listproduct = $('#listproduct')[0];
	listproduct.innerHTML= '<div class="loader"></div>';

	if(findtype != 0){ // recherche pas vide
		$.ajax({
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
			dataType : "json",
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/Product/findtype/'+findtype,
			type : 'GET',
			crossDomain : true,
			success : function(msg) {
				console.log("retour");
				console.log(msg);
				listproduct.innerHTML= '';
				for(var i=0; i< msg.length ; i++){
					var divProd = 
						'<div class="col-sm-4">'+
						'	<div class="panel panel-primary">'+
						'		<div class="panel-heading"><a class="lienColor" href="DetailProduct.do?prod='+msg[i].pid+'">'+ msg[i].pname +'</a></div>'+
						'		<div class="panel-body">'+
						'			<img src="https://placehold.it/150x80?text=IMAGE"'+
						'			class="img-responsive" style="width: 100%" alt="Image">'+
						'		</div>'+
						'		<div class="panel-footer">Possibilite de voir emplacement precis du produit</div>'+
						'	</div>'+
						'</div>';
					listproduct.innerHTML+=divProd;
				}
				if(msg.product_name == "Pas de resultats pour cette categorie"){
					console.log("ok");
					listproduct.innerHTML+=msg.product_name;
				}
			}
		});
	}else{
		reload();
	}
}
function findname(){
	var findtype = $('#findtype')[0].options[0].selected=true;
	var findname = $('#findname')[0].value;
	var listproduct = $('#listproduct')[0];
	listproduct.innerHTML= '<div class="loader"></div>';

	if(findname != "" ){ // recherche pas vide
		$.ajax({
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
			dataType : "json",
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/Product/findname/'+findname,
			type : 'GET',
			crossDomain : true,
			success : function(msg) {
				console.log("retour");
				console.log(msg);
				listproduct.innerHTML= '';
				for(var i=0; i< msg.length ; i++){
					var divProd = 
						'<div class="col-sm-4">'+
						'	<div class="panel panel-primary">'+
						'		<div class="panel-heading"><a class="lienColor" href="DetailProduct.do?prod='+msg[i].pid+'">'+ msg[i].pname +'</a></div>'+
						'		<div class="panel-body">'+
						'			<img src="https://placehold.it/150x80?text=IMAGE"'+
						'			class="img-responsive" style="width: 100%" alt="Image">'+
						'		</div>'+
						'		<div class="panel-footer">Possibilite de voir emplacement precis du produit</div>'+
						'	</div>'+
						'</div>';
					listproduct.innerHTML+=divProd;
				}
				if(msg.product_name == "Pas de resultats pour ce nom"){
					console.log("ok");
					listproduct.innerHTML+=msg.product_name;
				}
			}
		});
	}else{
		reload();
	}
}


