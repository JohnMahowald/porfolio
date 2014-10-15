$(document).ready( function() {
  var $window = $(window)
  
  var setDimensions = function() {
    var sidebarTop = $('#sidebar').offset().top;
    $('.main-section').css('min-height', $window.height());
    $('#title').css('height', $window.height());
    $('.title-wrapper').css('padding-top', $window.height() / 3);
    $('.main-nav-wrapper').css('padding-top', $window.height() / 4);
    $('#sidebar').css('height', $window.height());
    $('.section-card').css('height', $window.height() / 1.7);
  }

  setDimensions();

  window.onresize = function() { setDimensions() };
})