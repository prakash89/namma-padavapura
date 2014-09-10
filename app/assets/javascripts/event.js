$(document).ready(ready);
$(document).on('page:load', ready);

$(document).on("click", '#base_search_form_submit', function(){
	alert('hi');
  $(this).closest('form').submit();
});