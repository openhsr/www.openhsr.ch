$(document).ready(function() {
	// Toggle mobile menu
	$( "#hamburger" ).click(function() {
		$( "nav" ).toggle( "slow" );
		$( ".social").toggle(300);
	});
});
