<!--APP/src/main/webapp/jsp/referentiels/client/-->

<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<%@ include	file="/html/referentiels/client/searchClientLink_js_css.html"%>


<body>
<div style="margin-top: 75px;">


						<div class="contents">
<!---->
							
						
							<div id="divRecherche">
								<div class="row">
									
									<div>
										<label for="rechercheName">Nom: </label> 
									</div>
									<div>
										<label for="rechercheLocation">Geolocalisation : </label> 
											<FORM> 
												<INPUT type="checkbox" name="locationOk" value="l_ok">oui
												<INPUT type="checkbox" name="locationKo" value="l_ko">non
											</FORM>
									</div>
									<div>
										<label for="rechercheNotification">Notification : </label> 
											<FORM> 
												<INPUT type="checkbox" name="popupOk" value="p_ok">oui
												<INPUT type="checkbox" name="popupKo" value="p_ko">non
											</FORM>
									</div>
									<div>
										<label for="rechercheSexe">Sexe : </label>
										<FORM> 
												<INPUT type="checkbox" name="female" value="F">Femme
												<INPUT type="checkbox" name="male" value="M">Homme
											</FORM>
									</div>

								</div>
								<div class="row">

								</div>
								
   								<button id="buttonSearch" onclick="searchClick()">Recherche</button>
 
</div>
</div>
</body>
</html>
