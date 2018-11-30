$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
})

$( "#btnRecherche" )[0].click(function() {
  $( "#divRecherche" ).toggle( "slow" );
});