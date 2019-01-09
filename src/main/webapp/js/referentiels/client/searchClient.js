 // APP/src/main/webapp/js/referentiels/client/
 
 $(document).ready(function(){
	$('#listeLienNav')[0].children[0].setAttribute('class','active');
});



// envoyer info account à l'api
	function searchClick(){
	
		console.log('Recherche client');
		
		var location_ = $('#rechercheLocation').val();
		var notification = $('#rechercheNotification').val();
		var gender = $('#rechercheSexe').val();
		var name = $('#rechercheName').val();

			$.ajax({
				// Type data
				headers: { 
					'Accept': 'application/json',
					'Content-Type': 'application/json' 
				},
				dataType : 'json',

				// url API
				url : 'http://192.168.20.3:8080/ApiRest/RestGT/Admin/'+$location_+''+$notification,

				// Type method : POST PUT GET
				type: 'POST',  

				// parse Object to JSON 
				data: JSON.stringify(obj), 

				// MSG IF success
				success: function (msg) {  
					console.log(msg);
					alert("recherche OK");
				}
			});
}