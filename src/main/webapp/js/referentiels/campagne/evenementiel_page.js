/*** datepicker ***/

$(document).ready(function(){

	$('.ui.dropdown').dropdown();


	$(function () {
		var bindDatePicker = function() {
			$(".date").datetimepicker({
				format:'YYYY-MM-DD',
				minDate: moment().format('YYYY-MM-DD'),
				icons: {
					time: "fa fa-clock-o",
					date: "fa fa-calendar",
					up: "fa fa-arrow-up",
					down: "fa fa-arrow-down"
				}
			}).find('input:first').on("blur",function () {
				var date = parseDate($(this).val());
				var endDate = $(".date-fin").find('input:first').val();
				var startDate = $(".date-debut").find('input:first').val();

				if (! isValidDate(date) || date < moment().format('YYYY-MM-DD')) {
					date = moment().format('YYYY-MM-DD');
				}

				if (endDate != ""){
					if (date > parseDate(endDate)){
						$(".date-fin").find('input:first').val(date);
					} else if (date < parseDate(startDate)){
						$(".date-debut").find('input:first').val(date);
					}
				} else {
					$(".date-fin").find('input:first').val(date);
				}

				if (startDate == ""){
					$(".date-debut").find('input:first').val(date);
				}

				$(this).val(date);
			});
		}

		var isValidDate = function(value, format) {
			format = format || false;
			if (format) {
				value = parseDate(value);
			}

			var timestamp = Date.parse(value);

			return isNaN(timestamp) == false;
		}

		var parseDate = function(value) {
			var m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
			if (m)
				value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);

			return value;
		}

		bindDatePicker();
	});

});

/*** API - envoi de données du formulaire ***/

function formulaireCampagne() {


	console.log('Envoi du formulaire');

	var event_name = $('#event_name').val();
	var event_type = $('#event_type').val();
	var event_startdate = $('#event_startdate').val();
	var event_enddate = $('#event_enddate').val();
	var event_listStore = $('#event_listStore').val();
	var event_listProduct = $('#event_listProduct').val();
	var event_listProfileType = $('#event_listProfileType').val();

	var obj = new Object();
	var listeMagasin = new Object();
	var listeProfil = new Object();
	var listeProduct = new Object();
	
	obj.nameCampaign = event_name;
	obj.typeCampaign = event_type;
	obj.startdateCampaign = event_startdate;
	obj.enddateCampaign = event_enddate;
	
	listeMagasin = event_listStore;
	obj.listMagasinId = listeMagasin;
	
	listeProfil= event_listProfileType;
	obj.listProfilId = listeProfil;
	
	listeProduct = event_listProduct;
	obj.listProductId = listeProduct;

	$.ajax({
		// Type data
		headers : {
			'Accept' : 'application/json',
			'Content-Type' : 'application/json'
		},
		dataType : 'json',

		// url API
		url : 'http://192.168.20.3:8080/ApiRest/RestGT/Campagne/create',

		// Type method : POST PUT GET
		type : 'POST',

		// parse Object to JSON 
		data : JSON.stringify(obj),

		// MSG IF success
		success : function(msg) {
			console.log(msg);
			window.location.reload();
			

		}
	});

}

//$("#success_modal").modal("show");
//location.reload();

