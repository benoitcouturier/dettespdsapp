$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	console.log($( "#btnRecherche"));
});


$("#btnRecherche").onclick(function() {
	console.log('yes');
	$( "#divRecherche" ).toggle( "slow" );
});

