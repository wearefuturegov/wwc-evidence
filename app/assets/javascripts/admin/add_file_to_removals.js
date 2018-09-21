$.fn.addFileToRemovals = function() {
  if (this.length === 0) { return false; }
  
  var $filesToDelete = $('#files_to_delete')
  
  $(this).click(function(e) {
    var $this = $(this);
    var fileID = $this.data('fileId');
    
    $('<input>').attr({
      name: 'intervention[files_to_delete][]',
      value: fileID,
      type: 'hidden'
    }).appendTo($filesToDelete);
    
    $this.parent('li').hide();
    
    e.preventDefault();
  })
}
