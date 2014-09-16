$(document).ready(ready);
$(document).on('page:load', ready);

$(document).on("change", '.my_datepicker', function() {
	alert('date');
  var alt_field = $(this).siblings("input[type=hidden]").attr('id');
  if (!$(this).val()) $("#" + alt_field).val('');

});

$(document).on("focus", '.datepicker_expires_on', function() {
  var $this = $(this);
  var alt_field = $(this).siblings("input[type=hidden]").attr('id')
  $this.datepicker({
    altField: '#' + alt_field,
    altFormat: 'dd/mm/yy',
    changeYear: true,
    changeMonth: true,
    yearRange: "-200:+200"
  }).datepicker( "show" );
});