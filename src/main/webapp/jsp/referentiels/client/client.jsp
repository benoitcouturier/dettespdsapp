<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}


.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>
<div style="margin-top: 75px;">

<div class="container">
	<h3>Compte Client</h3> <br></br>
    <label for="fname">Nom: </label>
    <input type="text" id="name" value="Oufini" disabled="disabled">

    <label for="lname">Prénom: </label>
    <input type="text" id="firstname" value="Roua" disabled="disabled">

  	<label for="phone">Numéro: </label>
    <input type="tel" id="customer_phone" name="customer_phone">
 <br></br>
    <label for="age">Age: </label>
    <input type="number" id="customer_age" name="customer_age">
  <br></br>   
	<label for="Sexe">Sexe: </label>
    <select id="customer_sex" name="sexe">
      <option value="femme">Femme</option>
      <option value="homme">Homme</option>
    </select>
    
    <label for="state">Pays: </label>
    <input type="text" id="customer_state" name="customer_state">

    <label for="city">Ville: </label>
    <input type="text" id="customer_city" name="customer_city">
    
    <label for="adress">Adresse: </label>
    <input type="text" id="customer_adress" name="customer_adress">
    
    <label for="email">Email: </label>
    <input type="email" id="customer_email" name="email"> 
     <br></br>   

    <label for="preferences">Préférences: </label>
    <textarea id="customer_preferences" name="preferences" placeholder="preférences.." style="height:200px"></textarea>

   <input type="button" id="Valider" onclick="buttonclick()" value="Valider">
 
</div>
</div>
</body>
</html>


<script>
// envoyer info account à l'api
	function buttonclick(){
	
		var customer_phone = $('#customer_phone').val();
		var customer_age = $('#customer_age').val();
		var customer_sex = $('#customer_sex').val();
		var customer_state = $('#customer_state').val();
		var customer_city = $('#customer_city').val();
		var customer_adress = $('#customer_adress').val();
		var customer_email = $('#customer_email').val();
		var customer_preferences = $('#customer_preferences').val();

		if(customer_phone != "" && customer_age != "" 
				&& customer_sex!= "" && customer_state != "" 
				&& customer_city!= "" && customer_adress!= "" 
				&& customer_email != "" && customer_preferences != "" ){
			var obj = new Object();
			obj.customer_phone = customer_phone;
			obj.customer_age = customer_age;
			obj.customer_sex = customer_sex;
			obj.customer_state = customer_state;
			obj.customer_city = customer_city;
			obj.customer_adress = customer_adress;
			obj.customer_email = customer_email;
			obj.customer_preferences = customer_preferences;

			$.ajax({
				// Type data
				headers: { 
					'Accept': 'application/json',
					'Content-Type': 'application/json' 
				},
				dataType : 'json',

				// url API
				url : 'http://192.168.20.3:8080/ApiRest/RestGT/Client/create',

				// Type method : POST PUT GET
				type: 'POST',  

				// parse Object to JSON 
				data: JSON.stringify(obj), 

				// MSG IF success
				success: function (msg) {  
					console.log(msg);
					alert("compte client.. ajouté");
				}
			});
		}
	}

//récuprer les données du client de l'api en cours de dev
/*	function findClient() {
	var nom = $('#name')[0].innerHTML;
	$.ajax({
		headers: { 
			'Accept': 'application/json',
			'Content-Type': 'application/json'
		},
		dataType : "json",
		url : 'http://localhost:8080/ApiRest/RestGT/Client/find/'+name,
		type : 'GET',
		crossDomain : true,
		success : function(msg) {
			console.log(msg);
			
			var nomrecup = $('#name')[0];
			name.innerHTML = msg.name;
			
		}
	});
}
*/
</script>