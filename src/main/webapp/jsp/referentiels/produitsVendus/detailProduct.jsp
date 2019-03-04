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
				<h3>${prod.product_name}</h3>
				<p>
					Type de produit : <span id="prodt_id"></span><br>
				</p>
				<span class="hiddenData" id="prodt_id">${prod.prodt_type}</span>
			</div>

		</div>


		</div>


</body>

</html>