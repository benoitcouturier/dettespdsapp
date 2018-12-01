<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/magasins/detailMagasinLink_js_css.html"%>

<body>
	<div class="container marginNavSupp marginNavBar">

		<div class="row">

			<div class="col-lg-12">
			<h3>${mag.nom}</h3>
			<p>
			Type de magasin : <span id="typeMagasin"></span>
			</p>
			<span class="hiddenData" id="idType"></span>
			<span class="hiddenData" id="idEmplacement"></span>
			</div>

		</div>

		<div class="row">

			<div class="col-lg-12">
			<h3>Description</h3>
			<p>
			${mag.description}
			</p>
			</div>

		</div>

		<div class="row">

			<div class="col-lg-12">
				<button class="btn btn-danger">Supprimer</button>
				<button class="btn btn-primary">Modifier</button>
			</div>

		</div>

	</div>
</body>

</html>