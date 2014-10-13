// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.scrollTo.min
// require jquery.sticky
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  var $window = $(window)
  
  $('[data-toggle=offcanvas]').click(function() {
    $('.row-offcanvas').toggleClass('active');
  });
  
  $('[data-target=#projects-sub]').click(function(e) {
    $('#projects-sub').toggle('collapse');
  });
  
  /* Window Resizing */
  var setDimensions = function() {
    $('.main-section').css('height', $window.height());
    $('.title-wrapper').css('padding-top', $window.height() / 3);
    $('.main-nav-wrapper').css('padding-top', $window.height() / 3);
    $('#sidebar').css('height', $window.height());
  }
  
  setDimensions();
  
  window.onresize = function() { setDimensions() };
  
  /* Fixed Menu Settings */
  var sidebarTop = $('#sidebar').offset().top
  
  var stickySidebar = function() {
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
  
  /* Scrolling */
  $('a').click( function(e) {
    var target = $(e.currentTarget).data('link-target')
    if (target) { $(window).scrollTo(target, 600) };
  })
});