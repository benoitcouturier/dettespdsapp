<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include
	file="/html/referentiels/magasins/detailMagasinLink_js_css.html"%>

<body>
	<div class="container marginNavSupp">

		<div class="row">

			<div class="col-lg-12">${mag.nom}</div>

		</div>

	</div>
</body>

</html>