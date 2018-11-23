$(document).ready(function() {
  var originalTop = $(".sticky-nav").offset().top;

   $(window).scroll(function(){
    if ($(window).scrollTop() > originalTop) {
      $(".sticky-nav").addClass("sticky");
      $(".sticky-inner").addClass("sticky-bulk");
    } else {
      $(".sticky-nav").removeClass("sticky");
      $(".sticky-inner").removeClass("sticky-bulk");
    }
  });
});
