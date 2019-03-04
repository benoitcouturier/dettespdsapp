<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>
<html>
<%@ include file="/html/common/header.html"%>
<%@ include file="/jsp/common/nav.jsp"%>

<div style="margin-top: 75px;">
	<%-- 	<html:form action="Profil.do?source=connect">
            <html:text property="name"></html:text>
            <html:submit>Valider</html:submit>
        </html:form> --%>
</div>

<div>${var}</div>


<div style="margin-top: 75px;">

	<!--   R1  <label for="name"> Name Profil </label>
    <input type="text" id="name" name="nameProfil" value="" size="20" maxlength="60" />

    <label for="type"> Product Type </label>
    <input type="text" id="type" name="productType" value="" size="20" maxlength="60" />

    <label for="age"> Age Client </label>
    <input type="number" id="age" name="ageClient" value="" size="20" maxlength="60" />

    <label for="sex"> Sex Client  </label>
    <input type="text" id="sex" name="sexClient" value="" size="20" maxlength="60" />

    <label for="volume"> Purchase Volume </label>
    <input type="number" id="volume" name="purchaseVolume" value="" size="20" maxlength="60" />
    <input type="button" id="Valider" onclick="buttonclick()" value="Valider"> -->

	<div class="container">

		<div class="row">

			<div class="col-lg-3">
				<button class="btn btn-primary" onclick="mockUser()">Mock
					Compte Client</button>
				<br>
				<div class="progress">
					<div class="progress-bar" role="progressbar" aria-valuenow="0"
						aria-valuemin="0" aria-valuemax="100" style="width: 0%;">0%</div>
				</div>
			</div>

			<div class="col-lg-3">
				<button class="btn btn-primary" onclick="mockAchats()">Mock	Achats</button>
				<br>
				<div class="progress">
					<div class="progress-bar" role="progressbar" aria-valuenow="0"
						aria-valuemin="0" aria-valuemax="100" style="width: 0%;">0%</div>
				</div>
			</div>

			<div class="col-lg-3">
				<button class="btn btn-primary" onclick="insertionProfils()">Insert Profile</button>
				<br>
				<div class="progress">
					<div class="progress-bar" role="progressbar" aria-valuenow="0"
						aria-valuemin="0" aria-valuemax="100" style="width: 0%;">0%</div>
				</div>
			</div>

		</div>

	</div>

</div>

</html>

<script>

function mockUser() {


		$.ajax({
			// Type data
			headers : {
				'Accept' : 'application/json',
				'Content-Type' : 'application/json'
			},
			dataType : 'json',

			// url API
			url : 'http://192.168.20.3:8080/ApiRest/RestGT/Profil/mockUser',

			// Type method : POST PUT GET
			type : 'POST',

			// parse Object to JSON
			data : JSON.stringify(obj),

			// MSG IF success
			success : function(msg) {
				console.log(msg);
				alert("Mocke");
			}
		});
	}

</script>


<script>
	function buttonclick() {

		var name = $('#name').val()
		var type = $('#type').val()
		var age = $('#age').val()
		var sex = $('#sex').val()
		var volume = $('#volume').val()

		if (name != "" && name != " " && type != "" && type != " " && age != ""
				&& age != " " && sex != "" && sex != " " && volume != ""
				&& volume != " ") {
			var obj = new Object();

			obj.profilT_id = 0;
			obj.profilT_name = name;
			obj.product_Type = type;
			obj.ageClient = age;
			obj.sexClient = sex;
			obj.purchaseVolume = volume;

			$.ajax({
				// Type data
				headers : {
					'Accept' : 'application/json',
					'Content-Type' : 'application/json'
				},
				dataType : 'json',

				// url API
				url : 'http://192.168.20.3:8080/ApiRest/RestGT/Profil/create',

				// Type method : POST PUT GET
				type : 'POST',

				// parse Object to JSON
				data : JSON.stringify(obj),

				// MSG IF success
				success : function(msg) {
					console.log(msg);
					alert("Ajouté");
				}
			});
		}
	}
	
</script>

