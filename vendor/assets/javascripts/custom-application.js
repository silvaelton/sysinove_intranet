$(document).ready(function(){
  $('.date').mask('00/00/0000');
  $('.cep').mask('00000-000');
  $('.cpf').mask('000.000.000-00', {reverse: true, placeholder: "000.000.000-00"});
  $('.cnpj').mask('00.000.000/0000-00', {reverse: true});
});
