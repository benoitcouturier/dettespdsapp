$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	console.log($( "#btnRecherche"));
});


$("#btnRecherche").click(function() {
	console.log('yes');
	$( "#divRecherche" ).toggle( "slow" );
});

