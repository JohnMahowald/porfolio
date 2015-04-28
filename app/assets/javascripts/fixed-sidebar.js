$(document).ready( function() {  
  var sidebarTop = $('#sidebar').offset().top

  function stickySidebar () {
    var scrollTop = $(window).scrollTop();
  
    if (scrollTop > sidebarTop) {
      $('#sidebar').addClass('fixed');
    } else {
      $('#sidebar').removeClass('fixed');
    }
  };

  stickySidebar();
  
  $(window).scroll(function() {
    stickySidebar()
  })
})
