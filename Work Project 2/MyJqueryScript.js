$(document).ready(function(){
	$("#toggle_div").hide();
	$("#chkbox").click(function(){
		$("#toggle_div").toggle(this.checked);
	});
});