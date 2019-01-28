$(window).bind("load", function() {
  if ($(".sticky-nav").length) {
    var originalTop = $(".sticky-nav").offset().top;
  }
  if ($(".sticky-contents").length) {
    var originalTop = $(".sticky-contents").offset().top - 25;
    var bottomPoint = originalTop + $('.intervention_main_content').height() - $('.sticky-contents').height() - 25;
  }


  $(window).scroll(function(){
    var scrollPoint = $(window).scrollTop();

    if ($(".sticky-nav").length) {
      homePageScroll(scrollPoint, originalTop);
    }
    if ($(".sticky-contents").length) {
      subPageScroll(scrollPoint, originalTop, bottomPoint);
    }
  });
});


function homePageScroll(scrollPoint, originalTop) {
  if (scrollPoint > originalTop) {
    $(".sticky-nav").addClass("sticky");
    $(".sticky-inner").addClass("sticky-bulk");
  } else {
    $(".sticky-nav").removeClass("sticky");
    $(".sticky-inner").removeClass("sticky-bulk");
  }
}
function subPageScroll(scrollPoint, originalTop, bottomPoint) {
  $('.sticky-contents .sticky-inner').width($(".sticky-contents").width());

  if (scrollPoint > originalTop) {
    $(".sticky-contents").addClass("sticky");
    if (scrollPoint > bottomPoint) {
      $(".sticky-contents").addClass('reached_bottom');
      $('.sticky-inner').css('top', (bottomPoint-$('.sticky-contents').height() + 25));
    } else {
      $(".sticky-contents").removeClass('reached_bottom');
      $('.sticky-inner').css('top', 25);
    }
  } else {
    $(".sticky-contents").removeClass("sticky");
  }
}
