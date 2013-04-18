$(document).ready(function() {
  $('li#comments-show').click(function() {
  	$(this).next().slideDown();
  	$(this).click(function() {
  		$(this).next().slideUp();
		});
	});
});