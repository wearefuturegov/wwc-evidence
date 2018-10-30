//= require admin/tagify
//= require admin/add_file_to_removals

$(document).ready(function() {
  $('.remove-file').addFileToRemovals();
  $('.tagify-field').activateTagify();
});
