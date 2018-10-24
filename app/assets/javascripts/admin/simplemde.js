//= require simplemde/dist/simplemde.min.js

$('.markdown-field').each(function() {
  const simplemde = new SimpleMDE({
    element: this,
    forceSync: true,
  });
});
