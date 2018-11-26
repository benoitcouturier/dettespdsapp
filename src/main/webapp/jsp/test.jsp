<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Hello World</title>
</head>
<body>
	<h1>
		<bean:write name="TestStrutsActionForm" property="message" />
	</h1>
	<html:form action="Form.do">
		<html:text property="message"></html:text>
		<html:submit>Envoyer</html:submit>
	</html:form>

	<c:forEach var="entry" begin="0" end="5">
		<tr>
			<td>${p[entry].name}</td>
		</tr>
	</c:forEach>

	<h1>Créer magasin</h1>	
	<html:form action="Magasin.do">
		<html:text property="Magasin"></html:text>
		<html:submit>Envoyer</html:submit>
	</html:form>
	
	<br/>
	<h1>
		UC : Maintenir le référentiel des tarifs de livraison et modes de retrait
	</h1>
	 <br/>
	<h3>
		Appuyez sur ce bouton pour voir tous les tarifs des modes de retrait
	</h3>
	<html:form action="FormTarifs.do">
		<!--<html:text property="idCommande"></html:text>-->
		<html:submit>GO</html:submit>
	</html:form>
	
	<table>
	<thead>
		<tr>
			<th>Identity</th>
			<th>Distance</th>
			<th>Price</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${requestScope['wps']}" var="i">
		<tr>
			<td>${i.WP_id}</td>
			<td>${i.WP_distance}</td>
			<td>${i.WP_price}</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
</body>
</html>