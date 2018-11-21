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

</body>
</html>