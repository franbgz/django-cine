if (!$) {
    $ = django.jQuery;
}
$(function(){

  $('#id_nombre_interno').attr('readonly', true);

  $('#id_titulo').keyup(function(){
    $('#id_nombre_interno').val($('#id_titulo').val().toLowerCase().replace(/ /g, '_'));
  });
});
