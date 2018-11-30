$(document).ready(function(){
	$('#listeLienNav')[0].children[1].setAttribute('class','active');
	console.log($( "#btnRecherche"));
})

$( "#btnRecherche")[0].on('click',function() {
	console.log('yes');
  $( "#divRecherche" ).toggle( "slow" );
});