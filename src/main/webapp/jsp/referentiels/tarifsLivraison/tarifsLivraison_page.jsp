<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>

<body style="background-color : #f9f6f6">
	<div class="container" style="padding-top: 10vh;">
		<div class="row">
			<div class="col col-lg-12">
				<h1>| Modes de retrait & tarifs de livraison</h1>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col col-lg-12">
				<h3>Ajout d'un mode de retrait</h3>
			</div>
		</div>
	</div>
	
	<div class="container"
		style="padding: 2vh; border: 1px solid black; border-radius: 15px; background-color : white">
		<div class="row">
			<div class="col col-lg-12">

					<div class="form-group">
						<label for="wm_name">Nom du mode</label> <input type="text"
							class="form-control" id="wm_name"
							placeholder="Livraison à domicile">
					</div>

					<div class="form-group">
						<label for="wm_price">Prix (euros)</label> <input type="text"
							class="form-control" id="wm_price" placeholder="2">
					</div>
					
					<div class="form-group">
						<label for="wm_distance">Distance min(km)</label> <input type="text"
							class="form-control" id="wm_distance_min" placeholder="0">
					</div>
					
					<div class="form-group">
						<label for="wm_distance">Distance max(km)</label> <input type="text"
							class="form-control" id="wm_distance_max" placeholder="500">
					</div>
					
					<div class="form-group">
						<label for="wm_distance">Délai de livraison min</label> <input type="text"
							class="form-control" id="wm_livraison_min" placeholder="3">
					</div>
					
					<div class="form-group">
						<label for="wm_distance">Délai de livraison max</label> <input type="text"
							class="form-control" id="wm_livraison_max" placeholder="7">
					</div>

					<button onclick="formulaireTarif()" class="btn btn-primary">Enregistrer</button>

			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col col-lg-12">
				<h3>Modes de retrait existants</h3>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col col-lg-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Libellé</th>
							<th scope="col">Prix</th>
							<th scope="col">Distance min</th>
							<th scope="col">Distance max</th>
							<th scope="col">Délai de livraison min</th>
							<th scope="col">Délai de livraison max</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${requestScope['wms']}" var="i">
							<tr>
								<td scope="row">${i.WM_id}</td>
								<td>${i.WM_name}</td>
								<td>${i.WM_price}</td>
								<td>${i.WM_distance_min}</td>
								<td>${i.WM_distance_max}</td>
								<td>${i.WM_estimated_delivery_min}</td>
								<td>${i.WM_estimated_delivery_max}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>

</html>

<script>
	function formulaireTarif() {
		console.log('Envoi du formulaire');

		var wm_name = $('#wm_name').val();
		var wm_price = $('#wm_price').val();
		var wm_distance_min = $('#wm_distance_min').val();
		var wm_distance_max = $('#wm_distance_max').val();
		var wm_livraison_min = $('#wm_livraison_min').val();
		var wm_livraison_max = $('#wm_livraison_max').val();
		

		var obj = new Object();
		obj.wm_name = wm_name;
		obj.wm_price = wm_price;
		obj.wm_distance_min = wm_distance_min;
		obj.wm_distance_max = wm_distance_max;
		obj.wm_livraison_min = wm_livraison_min;
		obj.wm_livraison_max = wm_livraison_max;
		
		$.ajax({
			// Type data
			headers : {
				'Accept' : 'application/json',
				'Content-Type' : 'application/json'
			},
			dataType : 'json',

			// url API
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/WM/add',

			// Type method : POST PUT GET
			type : 'POST',

			// parse Object to JSON 
			data : JSON.stringify(obj),

			// MSG IF success
			success : function(msg) {
				console.log(msg);
				location.reload();
				
			}
		});

	}
</script>