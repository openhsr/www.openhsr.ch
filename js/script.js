
$(document).ready(function() {

	// scroll to a selector pos
	function scrollto(pos){
		$( "html, body" ).animate({
			scrollTop: $( pos ).offset().top
		}, 1);
	}


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

	// toggle content on load
	$( ".wiki-content h2.toggable" ).each(function(num,elem){
		var hash = window.location.hash.substring(1).split("#")[0];

		// do not toggle when directly linked to in hash
		if(hash != $(elem).attr("id")){
			$(elem).next( "div" ).toggle();
		}
	});
	// untoggle on klick event of h2
	$( ".wiki-content h2.toggable" ).click(function(){
		$(this).next( "div" ).toggle();
		$(this).toggleClass( "arrow" );
	});

	// untoggle on direct inline linking to this section
	$(window).on( "hashchange", function(){
		var hash = window.location.hash.substring(1).split("#")[0];
		var toggle_operations = $( "h2#" + hash  + ".toggable" ).next( "div" ).toggle();

		if( toggle_operations.length != 0) {
			// scroll to the position again, as the page length might have changed.
			scrollto( "#" + hash );
		}
	});
});
