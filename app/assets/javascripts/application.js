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
//= require bootstrap-sprockets
//= require jquery.scrollTo.min
//= require jquery.stellar.min
//= require jquery_ujs
//= require set-dimensions
//= require fixed-sidebar
//= require scroll
//= require set-menu
//= require asteroids/keymaster
//= require asteroids/utils
//= require asteroids/movingObject
//= require asteroids/asteroid
//= require asteroids/ships
//= require asteroids/game
//= require asteroids/bullet
//= require asteroids/gameView
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
  
  /* Section Title Headers
     set height for all but the first section title */
  $(".section-title").slice(1).css("margin-top", '10px');
  
  /* ToolTips */
  $('#travel-link').mouseover( function() {
    $('#travel-link').tooltip('toggle');
  });

  $("body").stellar({
    hideDistantElements: false
  });

  $(".hero-title").addClass("visible");
  $(".hero-role").addClass("visible");
  $(".enter").addClass("visible");
});

