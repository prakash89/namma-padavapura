var ready;
var messageModalId = "div_modal_message";
var genericModalId = "div_modal_generic";
var ajaxLoading = false;

// General functions

ready = function() {
	// searchFunction();
}

function showModal(heading, bodyContent, modalId){
  if(modalId==null){
    var modalId = messageModalId;
  }
  //$('#' + modalId + ' .modal-body').html("<p>"+ message +"</p>");
  $('#' + modalId + ' .modal-header h4.modal-title').text(heading);
  $('#' + modalId + ' div.modal-body').html(bodyContent);
  $('#' + modalId).modal({
    keyboard: true,
    backdrop: "static"
  });
  $('.modal-backdrop').removeClass('in');
  $('#' + modalId).modal('show');
//$('#' + modalId + ' .modal-footer button.btn-primary').button('reset');
}

function closeModal(modalId){
  if(modalId==null){
    var modalId = messageModalId;
  }
  $('#' + modalId).modal('hide');
}


// function add_fields(link, association, content) {
//   var new_id = new Date().getTime();
//   var regexp = new RegExp("new_" + association, "g");
//   $(link).parent().before(content.replace(regexp, new_id));
//   adjustContainerMargins();
// }

// function remove_option_field(link) {
//   $(link).prev("input[type=hidden]").val("1");
//   $(link).closest("div.div-new-field").hide();
// }

function globalAjaxCall(method, url, data) {
  jQuery.ajax({
    method: method,
    url: url,
    data: data
  });
}

function show() {
  if(document.getElementById('benefits').style.display=='none') {
    document.getElementById('benefits').style.display='block';
  }
  return false;
}
function hide() {
  if(document.getElementById('benefits').style.display=='block') {
    document.getElementById('opener').style.display='none';
  }
  return false;
}

function PopoverForEndorsment(){
  $('.popoverData1').popover();
  $('.popoverData2').popover();
  $('.popoverData3').popover();
  $('.popoverData4').popover();
  $('.popoverData5').popover();
  $('.popoverData2').popover();
  $('.popoverData2').popover();
  $('.popoverData2').popover();
  $('.popoverData2').popover();
  $('.popoverData2').popover();
  $('.popoverData11').popover();
  $('.popoverData12').popover();
  $('.popoverData13').popover();
  $('.popoverData14').popover();
  $('.popoverData15').popover();
  $('.popoverData16').popover();
  $('.popoverData17').popover();
  $('.popoverData18').popover();
  $('.popoverData19').popover();
  $('.popoverData20').popover();
  $('.popoverData21').popover();
  $('.popoverData22').popover();
  $('.popoverOption').popover({ trigger: "hover" });
}