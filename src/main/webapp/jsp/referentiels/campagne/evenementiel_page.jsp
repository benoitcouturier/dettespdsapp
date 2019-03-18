<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ include file="/html/common/header.html"%>
<%@ include
	file="/html/referentiels/campagne/evenementiel_page_js_css.html"%>

<html>

<%@ include file="/jsp/common/nav.jsp"%>

<body style="background-color: #f9f6f6">

	<div class="container" style="padding-top: 10vh;">

		<div class="row">
			<div class="col col-lg-12">
				<h1>| Lancer une campagne de suggestion</h1>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col col-lg-12">
				<h3>Ajout d'une campagne de suggestion</h3>
			</div>
		</div>
	</div>

	<form id="campagne-creation-form">
		<div class="container"
			style="padding: 2vh; border: 1px solid black; border-radius: 15px; background-color: white">
			<div class="row">
				<div class="col col-lg-12">

					<div class="form-group">
						<label for="event_name">Nom de l'évènement</label> <input
							type="text" class="form-control" id="event_name"
							placeholder="Nom d'évènement" required>
					</div>

					<div class="form-group">
						<label for="event_type">Type d'évènement</label> <select
							class="form-control" id="event_type">
							<option value="particulier">Particulier</option>
							<option value="general">General</option>
							<option value="promotion">Promotion</option>
						</select>
					</div>

					<div class="form-group">
						<label for="event_startdate">Date début de l'évènement</label>
						<div class='input-group date date-debut'>
							<input type='text' class="form-control" required
								id="event_startdate" /> <span class="input-group-addon"><span
								class="glyphicon glyphicon-calendar"></span> </span>
						</div>
					</div>

					<div class="form-group">
						<label for="event_enddate">Date fin de l'évènement</label>
						<div class='input-group date date-fin'>
							<input type='text' class="form-control" required
								id="event_enddate" /> <span class="input-group-addon"><span
								class="glyphicon glyphicon-calendar"></span> </span>
						</div>
					</div>

					<div class="form-group">
						<label for="event_listStore">Magasin(s) concerné(s)</label> <select
							class="ui fluid search dropdown" id="event_listStore" multiple>
							<option value="0" class="option-all">TOUS</option>
							<c:forEach items="${magasin}" var="i">
								<option value="${i.id}">${i.nom}</option>
							</c:forEach>

						</select>
					</div>

					<div class="form-group">
						<label for="event_listProduct">Produit(s) concerné(s)</label> <select
							class="ui fluid search dropdown" id="event_listProduct" multiple>
							<option value="0" class="option-all">TOUS</option>
							<c:forEach items="${requestScope['produit']}" var="i">
								<option value="${i.pid}">${i.pname}</option>
							</c:forEach>
						</select>
					</div>

					<div class="form-group">
						<label for="event_listProfileType">Type(s) de profil
							ciblé(s)</label> <select class="ui fluid search dropdown"
							id="event_listProfileType" multiple>
							<option value="0" class="option-all">Tous</option>
							<option value="12">Jeune femme</option>
							<option value="13">Jeune homme</option>
							<option value="14">Sportif</option>

							<!-- <c:forEach items="${requestScope['profileType']}" var="i">
						<option value="${i.idProfileType}">${i.profileName}</option>
						</c:forEach> -->

						</select>
					</div>

					<a onclick="formulaireCampagne()" class="btn btn-primary">Enregistrer</a>

				</div>
			</div>
		</div>
	</form>

	<div class="container" style="padding-top: 10vh;">

		<div class="row">
			<div class="col col-lg-12">
				<h1>| Campagne de suggestion</h1>
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
								<th scope="col">Type</th>
								<th scope="col">Date de début</th>
								<th scope="col">Date de fin</th>
								<th scope="col">Magasins</th>
								<th scope="col">Produits</th>
								<th scope="col">Type de profils</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope['campagne']}" var="i">
								<tr>
									<td scope="row">${i.idCampaign}</td>
									<td>${i.nameCampaign}</td>
									<td>${i.typeCampaign}</td>
									<td>${i.startdateCampaign}</td>
									<td>${i.enddateCampaign}</td>
									<c:choose>
										<c:when test="${i.typeCampaign == 'general'}">
											<td>TOUS</td>
											<td>TOUS</td>
											<td>TOUS</td>
										</c:when>
										<c:otherwise>
										<td></td>
										<td></td>
										<td></td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>

	<div id="success_modal" class="modal fade bs-modal-sm" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<br />
				<h2>Création de la campagne de suggestion</h2>
				<hr />
				Succès
			</div>
		</div>
	</div>


</body>

</html>