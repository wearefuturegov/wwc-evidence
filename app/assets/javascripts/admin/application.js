//= require admin/tagify
//= require admin/add_file_to_removals
//= require admin/add_array_field

$(document).ready(function() {
  $('.remove-file').addFileToRemovals();
  $('.add_array .button').addArrayField();
  $('.tagify-field').activateTagify();
});
