//watchers etc. here
$(document).ready(function(){
	
});

//config so rails recognizes the ajax submits as response.js
jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});
//so far used in jquery ui: sortable
//functions
function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
	$(link).parent().hide();
	return false;
  
}
function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).prev(".fields_list").append(content.replace(regexp, new_id));
}


	

