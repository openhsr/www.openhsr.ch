
$(document).ready(function() {

	/********************
	 * Helper functions
	 ********************/

	// scroll to a element
	function scrollTo(element){
		$( "html, body" ).animate({
			scrollTop: $(element).offset().top
		}, 1);
	}

	function toggleOpen(element) {
		$(element).removeClass( "toggle-closed" );
		$(element).addClass( "toggle-open" );
	}

	function toggleClose(element) {
		$(element).removeClass( "toggle-open" );
		$(element).addClass( "toggle-closed" );
	}

	function getURLHash() {
		return window.location.hash.substring(1).split("#")[0];
	}

	var load_hash = getURLHash();

	/********************
	 * Mobile Navigation
	 ********************/

	// Toggle sub navigation on mobile
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

	/********************
	 * Scroll to top
	 ********************/
	 $( "#scroll-top" ).click(function(){
		 scrollTo("#top");
	 });

	/********************
	 * Toggable
	 ********************/

	// toggle content on load
	$( ".toggable" ).each(function(num,elem){
		if(getURLHash() != $(elem).attr("id")){
			toggleClose(elem);
		} else {
			toggleOpen(elem);
		}
	});

	// if a location was passed as document hash,
	if(load_hash !="") {
		// scroll to it after toggle operations changed it's location.
		scrollTo("#" + load_hash);
	}

	// untoggle on klick event
	$( ".toggable" ).click(function(){

		if($(this).is('.toggle-open')) {
			toggleClose(this);

			// remove this location hash from URL
			if($(this).attr("id") == getURLHash()){
				window.location.hash = "#";
			}
		} else {
			toggleOpen(this);
		}
	});

	// untoggle on direct inline linking to this element
	$(window).on( "hashchange", function(event){

		// do nothing on empty URL-Hash
		if(getURLHash() == "") {
			event.preventDefault();
			return false;
		}

		// select closed location toggle
		var toggle_element = $( "#" + getURLHash()  + ".toggle-closed");

		if(toggle_element.length != 0) {
			toggleOpen( toggle_element );

			// scroll to the position again, as the page length might have changed.
			scrollTo("#" + getURLHash());
		}
	});
});

$(window).scroll(function(){
	if($(window).scrollTop() > 100){
		$("#scroll-top").fadeIn("slow");
	} else {
		$("#scroll-top").fadeOut("slow");
	}
});
