$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	console.log($( "#btnRecherche"));
});

$(document).ready(function(){
	$( "#btnRecherche")[0].on('click',function() {
		console.log('yes');
	  $( "#divRecherche" ).toggle( "slow" );
	});
});
