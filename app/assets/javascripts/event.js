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

$(document).on("click", "#preference_required_field", function(){
  $('#preference_required_field').parent().addClass('active');
  $('#preference_edit_favorite').parent().removeClass('active'); 
});
  
$(document).on("click", "#preference_edit_favorite", function(){
  $('#preference_required_field').parent().removeClass('active');
  $('#preference_edit_favorite').parent().addClass('active'); 
});

// $(document).ready(function() {
//   $("a.fancybox").fancybox();
//   // alert('hi');
// });

// $.fancybox({
//       'width': '68%',
//       'height': '60%',
//       // 'href': url,
//       // 'type': 'iframe'
//     });

// $(document).on('click', '.mysore-pop', function(event) {
//   event.preventDefault();
//   $('#mysore-popup').modal({
//       keyboard: true,
//       backdrop: "static"
//     });
//     $('.modal-backdrop').removeClass('in'); 
//     $('#mysore-popup').modal('show');
// });

$(document).on('click', '.mysore-pop', function(event) {
  event.preventDefault();
  $('.modal-backdrop').removeClass('in');
  // var CURR_DOC_ID = $(this).data('id');
  // $("#documentdeleteanchor").attr({href:"/clients/"+CURR_DOC_ID});
});

  $('#popoverData1').popover();
  $('.popoverData2').popover();
  $('.popoverData3').popover();
  $('.popoverData4').popover();
  $('.popoverData5').popover();
  $('.popoverOption').popover({ trigger: "hover" });