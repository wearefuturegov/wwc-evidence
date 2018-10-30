//= require admin/tagify
//= require admin/add_file_to_removals
//= require admin/simplemde

$(document).ready(function() {
  $('.remove-file').addFileToRemovals();
  $('.tagify-field').activateTagify();
});
