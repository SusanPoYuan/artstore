$(function(){


	$('#scrollable').scrollspy();
	
	function setHover(){
		$('.banner_2').toggleClass('hover1');
	}
	
	setInterval(function(){
		setHover();
	},4000);
	


});