$(document).ready(function() {
	// Toggle mobile menu
	$( "#hamburger" ).click(function() {
		$( "nav" ).toggle( "slow" );
		$( ".social" ).toggle(300);
	});

	// Toggle sub mobile menu
	$( "nav > ul > li > a" ).click(function(event) {
		if($( "#hamburger" ).is(":visible") && $(this).next( "ul" ).length != 0){
			event.preventDefault();
			$(this).parent("li").siblings("li ").each(function(){
				$(this).removeClass("active");
				$(this).find( "ul" ).hide();
			});
			$(this).parent("li").toggleClass( "active" );
			$(this).next( "ul" ).first().toggle("fast");
		}
	});

	// Content preview for wiki pages
	$( ".wiki-content h2" ).click(function(){
		$(this).next( "div" ).toggle();
		$(this).toggleClass( "arrow" );
	});
});
