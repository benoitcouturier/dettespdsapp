<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
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

	<div class="container"
		style="padding: 2vh; border: 1px solid black; border-radius: 15px; background-color: white">
		<div class="row">
			<div class="col col-lg-12">

				<div class="form-group">
					<label for="wm_name">Nom de l'évènement</label> <input type="text"
						class="form-control" id="wm_name"
						placeholder="Nom d'évènement">
				</div>

				<div class="form-group">
					<label for="wm_price">Type d'évènement</label> <input type="text"
						class="form-control" id="wm_price">
				</div>

				<div class="form-group">
					<label for="wm_distance">Date début de l'évènement</label> <input
						type="text" class="form-control" id="wm_distance_min">
				</div>

				<div class="form-group">
					<label for="wm_distance">Date fin de l'évènement</label> <input
						type="text" class="form-control" id="wm_distance_max">
				</div>

				<div class="form-group">
					<label for="wm_distance">Type(s) de produit concerné(s)</label> <input
						type="text" class="form-control" id="wm_livraison_min">
				</div>
				<!-- 
				<div class="form-group">
					<label for="wm_distance">Type de profil ciblé</label> <input
						type="text" class="form-control" id="wm_livraison_max"
						placeholder="7">
				</div>
				 -->
				<button onclick="formulaireTarif()" class="btn btn-primary">Enregistrer</button>

			</div>
		</div>
	</div>

</body>

</html>