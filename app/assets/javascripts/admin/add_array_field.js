$.fn.addArrayField = function() {
  if (this.length === 0) { return false; }
  
  $(this).click(function(e) {
    var targetClass = $(this).data('target');
    var field = $(this).data('field')
    $(targetClass).append(field);
    
    $(targetClass).on('click', '.field-unit__minus-button a.button', function() {
      $(this).parents('.array_group').remove();
      e.preventDefault();
    })
    
    e.preventDefault();
  });
  
}
