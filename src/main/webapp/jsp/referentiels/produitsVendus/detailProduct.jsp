<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/produitsVendus/detailProductLink_js_css.html"%>

<body style="background-color : #f9f6f6">
		<div class="container" style="padding-top: 10vh;">

		<div class="row">

			<div class="col col-lg-12">

								<table class="table table-hover">
					<thead>
						<tr>
						 	<th scope="col">Nom du produit</th>
							<th scope="col">Nom du magasin</th>
							<th scope="col">Emplacement magasin</th>
							<th scope="col">Emplacement précis dans le magasin</th>
						</tr>
					</thead>
										<tbody>
							<tr>
								<td id="pname"></td>
								<td id="store"></td>
								<td id="emplacement"></td>
								<td id="departement"></td>
							</tr>
					</tbody>
				</table>
			</div>
			<span style="display : none;" id="pid">${pid}</span>
			<span style="display : none;" id="id"></span>
			<span style="display : none;" id="idEmplacement"></span>
		</div>


		</div>


</body>

</html>