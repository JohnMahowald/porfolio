$(document).ready( function() {
  $('a').click( function(e) {
    var target = $(e.currentTarget).data('link-target')

    if (target) { 
      e.preventDefault();
      $(window).scrollTo(target, 800);
    }
  })
});
