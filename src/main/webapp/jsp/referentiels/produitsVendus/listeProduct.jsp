<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/produitsVendus/listeProductLink_js_css.html"%>

<body>
	<div id="page" class="container marginNavBar">

		<div class="row">
			<div class="col-lg-12">
				<button id="addProduct" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal" onclick="modalAjout()">Ajouter un
					produit</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Ajouter Produit</h4>
							</div>
							<div class="modal-body">

								<div class="row">

									<div class="col-lg-6">
										<div>
											<label for="product_name">Nom du Produit : </label> <input
												class="form-control" type="text" name="product_name"
												id="product_name" />
										</div>
										<br>
										<div>
											<label for="product_price">Prix du Produit : </label> <input
												class="form-control" type="text" name="product_price"
												id="product_price" />
										</div>
									</div>
									<div class="col-lg-6">
										<div>
											<label for="product_quantity">Quantité du Produit : </label>
											<input class="form-control" type="text"
												name="product_quantity" id="product_quantity" />
										</div>
										<br>
										<div>
											<label for="store_id">Magasin : </label> <input
												class="form-control" type="text" name="store_id"
												id="store_id" />
										</div>
									</div>
									<div class="col-lg-6">
										<div>
											<label for="prods_id">Status : </label>
											<input class="form-control" type="text"
												name="prods_id" id="prods_id" />
										</div>
										<br>
										<div>
											<label for="prodt_id">Type : </label> <input
												class="form-control" type="text" name="prodt_id"
												id="prodt_id" />
										</div>
									</div>

								</div>



							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary"
									onclick="envoiFormulaireProduct()">Ajouter</button>
								<button type="button" class="btn btn-default" id="closeModal"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

			</div>

		</div>
		<div class="col-lg-12">
			<c:forEach var="iterator" items="${pro}">
				<p>${iterator.pid}-${iterator.pname}-${iterator.price}-${iterator.pqte}-${iterator.sid}-${iterator.psid}-${iterator.ptid}</p>
			</c:forEach>
		</div>



	</div>
	</div>
</body>

</html>