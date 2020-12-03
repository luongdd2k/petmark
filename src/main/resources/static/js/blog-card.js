/**
 * http://usejsdoc.org/
 */
$(function(){
		for(var i=0; i< document.getElementsByClassName("blog-date").length; i++){
			var date = document.getElementsByClassName("blog-date")[i].innerHTML;
			var bDate = new Date(date);
			var time = bDate.getDate() +"/"+ parseInt(bDate.getMonth()+1) +"/" +bDate.getFullYear();
			document.getElementsByClassName("blog-date")[i].innerHTML=time;
			}
	});
