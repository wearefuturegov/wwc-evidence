//= require @yaireo/tagify/dist/jQuery.tagify.min.js

$.fn.activateTagify = function() {
  if (this.length === 0) { return false; }

  $.get('/admin/tags.json', function(data) {
    $('#tag_tags').tagify({
      whitelist: data.map(function(obj) {
        return {
          value: obj.name,
          id: obj.id
        }
      }),
    }).on('add', function(e, tag){
      if (tag.id === undefined) {
        $.post('/admin/tags', { tag: { name: tag.value } });
      } else {
        $.get('/admin/tags/' + tag.id);
      }
    }).on('remove', function(e, tag) {
      $('#tag_wrapper input[value='+ tag.id +']').remove()
    })
  });
}
