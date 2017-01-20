$(document).ready(function(){
  $('.date').mask('00/00/0000', {placeholder: "00/00/0000"});
  $('.cep').mask('00000-000');
  $('.cpf').mask('000.000.000-00', {reverse: true, placeholder: "000.000.000-00"});
  $('.cnpj').mask('00.000.000/0000-00', {reverse: true, placeholder: "00.000.000/0000-00"});


  $('#calendar').fullCalendar({});

});


$(function() {
  $('form').on('click', '.remove_fields', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('fieldset').hide();
    return event.preventDefault();
  });
  return $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
});