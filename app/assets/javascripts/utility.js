var ready;

// General functions

ready = function() {
	searchFunction();
}

function searchFunction() {
$('#base_search_form_submit').on("click", function(){
	alert('hi');
  $(this).closest('form').submit();
});
}