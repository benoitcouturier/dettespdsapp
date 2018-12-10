$(document).ready(function(){
	$('#listeLienNav')[0].children[2].setAttribute('class','active');
});

function modalAjout() {
	console.log('Ajout Modal');

	var nom = $('#product_name')[0];
	var prix = $('#product_price')[0];
	var qte = $('#product_quantity')[0];
	var sid = $('#store_id')[0];
	var psid = $('#prods_id')[0];
	var ptid = $('#prodt_id')[0];
	nom.value='';
	prix.value='';
	qte.value='';
	sid.value='';
	psid.value='';
	ptid.value='';

}

function envoiFormulaireProduct(){
	console.log('Envoi du formulaire');

	var nom = $('#product_name')[0].value;
	var prix = $('#product_price')[0].value;
	var qte= $('#product_quantity')[0].value;
	var sid = $('#store_id')[0].value;
	var psid = $('#prods_id')[0].value;
	var ptid = $('#prodt_id')[0].value;

	console.log(nom);
	console.log(prix);
	console.log(qte);
	console.log(sid);
	console.log(psid);
	console.log(ptid);

	if(nom != "" && nom != " "){
		var obj = new Object();
		// attribut de l'objet java
		obj.pname = nom;
		obj.price = prix;
		obj.pqte = qte;
		obj.sid = sid;
		obj.psid = psid;
		obj.ptid = ptid;
		$.ajax({
			// Type data
			headers: { 
				'Accept': 'application/json',
				'Content-Type': 'application/json' 
			},
			dataType : 'json',

			// url API
			url : 'http://localhost:8080/ApiRest/RestGT/Product/create',

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

