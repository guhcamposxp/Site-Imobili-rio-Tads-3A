$(document).ready(function(){
  $('.maskCPF').mask('000.000.000-00');
  $('.maskCNPJ').mask('00.000.000/0000-00', {reverse: true});
  $('.maskRG').mask('00.000.000-0');
  $('.maskTelCel').mask('(00) 00000-0000');
  $('.maskTelFixo').mask('(00) 0000-0000');
  $('.maskDataNascimento').mask("00/00/0000", {placeholder: "__/__/____"});
  $('.maskCEP').mask('00000-000');
});
