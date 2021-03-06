<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/magasins/listeMagasinsLink_js_css.html"%>

<body>

	<div class="conteneur marginNavBar">

		<div class="row">

			<div class="col-lg-12">

				<div class="container marginNavSupp">

					<!--  Recherche De magasin  -->
					<div class="row">

						<div class="col-lg-12">

							<button id="btnRecherche" class="btn btn-primary"
								onclick="toggleRecherche()">Recherche</button>
							<button id="ajouterMagasin" class="btn btn-primary"
								data-toggle="modal" data-target="#myModal"
								onclick="modalAjout()">Ajouter un magasin</button>

							<div id="divRecherche">
								<div class="row">

									<div class="col-lg-6">

										<label for="rechercheType">Type de magasin : </label> <select
											class="form-control" id="rechercheType" name="rechercheType"
											onchange="rechercheType()"></select>
											 <label for="rechercheNom"> Nom de magasin</label> 
											<input type="text" onkeyup="rechercheNom()"class="form-control" id="rechercheNom" name="rechercheNom">


									</div>

								</div>
								<div class="row"></div>

							</div>


							<!-- Modal -->
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Ajouter Magasin</h4>
										</div>
										<div class="modal-body">

											<div class="row">

												<div class="col-lg-6">
													<div>
														<label for="nameMagasin">Nom du Magasin : </label> <input
															class="form-control" type="text" name="nameMagasin"
															id="nameMagasin" />
													</div>
													<br>
													<div>
														<label for="numEmplacement">Emplacement
															disponibles : </label> <select class="form-control"
															name="numEmplacement" id="numEmplacement"></select>
													</div>
												</div>
												<div class="col-lg-6">
													<div>
														<label for="numType">Type de Magasin : </label> <select
															class="form-control" name="numType" id="numType"></select>
													</div>
													<br>
													<div>
														<label for="description">Description : </label>
														<textarea class="form-control" name="description"
															id="description" maxlength="250"></textarea>
													</div>
												</div>

											</div>



										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary"
												onclick="envoiFormulaireMagasin()">Ajouter</button>
											<button type="button" class="btn btn-default" id="closeModal"
												data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>
							</div>

						</div>

					</div>
					<br>
					<!--  Liste de magasins  -->
					<div class="row" id="listeMagasins">
						<c:forEach var="iterator" items="${mag}">
							<div class="col-sm-4">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<a class="lienColor"
											href="DetailMagasin.do?mag=${iterator.id}">${iterator.nom}</a>
									</div>
									<div class="panel-body">
										<img src="https://placehold.it/150x80?text=IMAGE"
											class="img-responsive" style="width: 100%" alt="Image">
									</div>
									<div class="panel-footer">Ouvert 7j/7 en periode de Noel.</div>
								</div>
							</div>
						</c:forEach>
					</div>


				</div>
				<br> <br>
			</div>

		</div>

	</div>

</body>

</html>