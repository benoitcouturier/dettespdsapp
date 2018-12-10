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

				<form>
					<div class="form-group">
						<label for="wm_name">Nom du mode</label> <input type="text"
							class="form-control" id="wm_name"
							placeholder="Livraison à domicile">
					</div>

					<div class="form-group">
						<label for="wm_distance">Distance (km)</label> <input type="text"
							class="form-control" id="wm_distance" placeholder="500">
					</div>

					<div class="form-group">
						<label for="wm_price">Prix (euros)</label> <input type="text"
							class="form-control" id="wm_price" placeholder="2">
					</div>

					<button onclick="formulaireTarif()" class="btn btn-primary">Enregistrer</button>

				</form>
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
							<th scope="col">Distance</th>
							<th scope="col">Prix</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${requestScope['wms']}" var="i">
							<tr>
								<td scope="row">${i.WM_id}</td>
								<td>${i.WM_name}</td>
								<td>${i.WM_distance}</td>
								<td>${i.WM_price}</td>
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
		var wm_distance = $('#wm_distance').val();
		var wm_price = $('#wm_price').val();

		var obj = new Object();
		obj.wm_name = wm_name;
		obj.wm_distance = wm_distance;
		obj.wm_price = wm_price;
		
		$.ajax({
			// Type data
			headers : {
				'Accept' : 'application/json',
				'Content-Type' : 'application/json'
			},
			dataType : 'json',

			// url API
			url : 'http://localhost:8080/ApiRest/RestGT/WM/add',

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