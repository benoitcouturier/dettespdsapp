<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/magasins/detailMagasinLink_js_css.html"%>

<body>
	<div class="container marginNavBar">

		<div class="row">

			<div class="col-lg-12">
				<h3>${mag.nom}</h3>
				<p>
					Type de magasin : <span id="typeMagasin"></span>
				</p>
				<span class="hiddenData" id="idType"></span> <span
					class="hiddenData" id="idEmplacement"></span>
			</div>

		</div>

		<div class="row">

			<div class="col-lg-12">
				<h3>Description</h3>
				<p>${mag.description}</p>
			</div>

		</div>

		<div class="row">

			<div class="col-lg-12">
				<button class="btn btn-danger">Supprimer</button>
				<button class="btn btn-primary">Modifier</button>
			</div>

		</div>


		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Supprimer le Magasin ${mag.nom}</h4>
					</div>
					<div class="modal-footer">
					<button type="button" class="btn btn-danger" id="suppModal"
							data-dismiss="modal">Supprimer</button>
						<button type="button" class="btn btn-default" id="closeModal"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>

</html>