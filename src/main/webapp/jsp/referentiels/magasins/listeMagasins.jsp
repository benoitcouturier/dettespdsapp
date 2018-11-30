<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include file="/html/referentiels/magasins/listeMagasinsLink_js_css.html"%>

<body>

	<div class="conteneur marginNavBar">

		<div class="row">

			<div class="col-lg-12">

				<div class="container">

					<!--  Recherche De magasin  -->
					<div class="row">

						<div class="col-lg-12">

							<button id="btnRecherche" class="btn btn-success">Recherche</button>
							<div id="divRecherche">
								<p>Affichage Recherche</p>
							</div>


						</div>

					</div>

					<!--  Liste de magasins  -->
					<div class="row">
						<%-- <c:forEach> --%>
						<div class="col-sm-4">
							<div class="panel panel-primary">
								<div class="panel-heading">BLACK FRIDAY DEAL</div>
								<div class="panel-body">
									<img src="https://placehold.it/150x80?text=IMAGE"
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">Buy 50 mobiles and get a gift
									card</div>
							</div>
						</div>
						<%-- </c:forEach> --%>
					</div>


				</div>
				<br> <br>
			</div>

		</div>

	</div>

</body>

</html>