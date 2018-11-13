//= require admin/tagify
//= require admin/add_file_to_removals
//= require admin/array_field

$(document).ready(function() {
  $('.remove-file').addFileToRemovals();
  $('.tagify-field').activateTagify();
  $('.add_array .button').addArrayField();
  $('.field-unit__minus-button .button').removeArrayField();
});
