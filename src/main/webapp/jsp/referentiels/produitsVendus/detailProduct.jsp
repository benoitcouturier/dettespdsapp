<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/produitsVendus/detailProductLink_js_css.html"%>

<body>
	<div id="page" class="container marginNavBar">

		<div class="row">

			<div class="col-lg-12">
				<h3>${prod.pname}</h3>
				<p>
					Magasin : <span id="store"></span><br>
					<p>${mag.nom}</p>
				</p>
				<p>
					Emplacement magasin : <span id="emplacement"></span><br>
					<p>${mag.idEmplacement}</p>
				</p>
				<p>
					Emplacement précis dans le magasin : <span id="departement"></span><br>
				<p>${prod.departement}</p>
				</p>
			</div>
			<span style="display : none;" id="pid">${pid}</span>
			<span style="display : none;" id="id"></span>
			<span style="display : none;" id="idEmplacement"></span>
		</div>


		</div>


</body>

</html>