$(function() {
  $('#select-model').filterByValues( $('.filter') );
  $('.filter').change();
});  


jQuery.fn.filterByValues = function(masterSelects) {
  return this.each(function() {
    var select = this;
    var options = [];
    $(select).find('option').each(function() {
      options.push({value: $(this).val(), text: $(this).text()});
    });
    $(select).data('options', options);
    
    masterSelects.bind('change', function() {
      var options = $(select).empty().scrollTop(0).data('options');
      var vals=[];
      $(masterSelects).each(function(i,e){
        vals.push('^'+$.trim($(e).val())+'$' );
       });
      var search = vals.join('|');
      var regex = new RegExp(search,'gi');

      $.each(options, function(i) {
        var option = options[i];
        if(option.value.match(regex) !== null) {
          $(select).append(
             $('<option>').text(option.text).val(option.value)
          );
        }
      });
    });
    
  });
};