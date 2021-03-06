// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {
	// Dropdown for new post in navbar:
	$('.dropdown-trigger-newpost').click(function(e){
		e.preventDefault();
		$('#navdropdown-notifications').hide();
		$('#navdropdown-newpost').toggle();
	})	
	// Dropdown for notifications in navbar:
	$('.dropdown-trigger-notifications').click(function(e){
		e.preventDefault();
		$('#navdropdown-newpost').hide();
		$('#navdropdown-notifications').toggle();
	})	

	// Footer:
	$('#footer li a').mouseenter(function(e){
		$(this).addClass('css-mouseover');
	})
	$('#footer li a').mouseleave(function(e){
		$(this).removeClass('css-mouseover');
	})
	$('#footer li a').click(function(e){
		e.preventDefault();
	})
});

	