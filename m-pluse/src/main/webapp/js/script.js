$('#galleria a').mouseover(function(event){
	
	 event.preventDefault(); 
	 $('#img-gal').href($(this).attr('href' ));  
    
});	