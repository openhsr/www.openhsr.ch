$(document).ready(function() {
	// Toggle mobile menu
	$( "#hamburger" ).click(function() {
		$( "nav" ).toggle( "slow" );
		$( ".social" ).toggle(300);
	});

	// Toggle sub mobile menu
	$( "nav > ul > li" ).click(function(event) {
		if($( "#hamburger" ).is(":visible")){
			event.preventDefault();
			$(this).siblings( "nav > ul > li " ).removeClass("active");
			$(this).siblings( "nav > ul > li " ).each(function(){
				$(this).find( "ul" ).hide();
			});
			$(this).toggleClass( "active" );
			$(this).find( "ul" ).first().toggle("fast");
		}
	});

	// Content preview for wiki pages
	$( ".wiki-content h2" ).click(function(){
		$(this).next( "div" ).toggle();
		$(this).toggleClass( "arrow" );
	});
});
