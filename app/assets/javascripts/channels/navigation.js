 console.log("JS file loaded!");

 $(window).scroll(function(){
  	var scroll = $(window).scrollTop();
	  if (scroll > 100) {
	    $(".nav-bg").css({"background-color": "rgba(0,0,0,0.98)", "transition": "background-color 1.2s" });
	    $(".admin-nav-bg").css({"background-color": "rgba(0,0,0,0.90)", "transition": "background-color 1.2s" });

	  }

	  else{
		  $(".nav-bg").css({"background-color": "transparent"}); 
		  $(".admin-nav-bg").css({"background-color": "rgba(0,0,0,0.98)"}); 

	  }
  })