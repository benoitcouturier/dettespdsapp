$(document).ready(function(){
	$('#listeLienNav')[0].children[2].setAttribute('class','active');

	var pid = $('#pid')[0].innerHTML;
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Product/find/'+parseInt(pid),
		//url : 'http://localhost:8080/ApiRest/RestGT/Product/find/'+parseInt(pid),
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			var output = $('#departement')[0];
			output.innerHTML = msg.departement;
			
			var output = $('#pname')[0];
			output.innerHTML = msg.pname;
			
			var price = $('#price')[0];
			price.innerHTML = msg.price;

			$('#id')[0].innerHTML=msg.sid;

			// On execute a la suite de la premiere requete 

			var mid = $('#id')[0].innerHTML;
			$.ajax({
				headers: { 
					'Accept': 'application/json',
					'Content-Type': 'application/json'
				},
				dataType : "json",
				url : 'http://192.168.20.3:8080/ApiRest/RestGT/Magasin/find/'+mid,
				//url : 'http://localhost:8080/ApiRest/RestGT/Magasin/find/'+mid,
				type : 'GET',
				crossDomain : true,
				success : function(msg) {
					console.log(msg);
					var output = $('#store')[0];
					output.innerHTML = msg.nom;
					
					
					$('#idEmplacement')[0].innerHTML=msg.idEmplacement;
				
					var emplacement = $('#idEmplacement')[0].innerHTML;
					$.ajax({
						headers: { 
							'Accept': 'application/json',
							'Content-Type': 'application/json'
						},
						dataType : "json",
						url : 'http://192.168.20.3:8080/ApiRest/RestGT/Emplacement/find/'+emplacement,
						//url : 'http://localhost:8080/ApiRest/RestGT/Emplacement/find/'+emplacement,
						type : 'GET',
						crossDomain : true,
						success : function(msg) {
							console.log(msg);
							// lorsque que le type est récupéré on l'affiche
							var spanEmplacement = $('#emplacement')[0];
							spanEmplacement.innerHTML = msg.id +' - ' + msg.aile + ' - ' + msg.superficie + 'm²' + ' -  x' +msg.importance;
						}
					})
				}
			});
		}
	});


});
