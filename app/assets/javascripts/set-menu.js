$(document).ready( function() {  
  function setMenu() {
    var $window = $(window);
    var $sections = $('.section-title');
    var $navItems = $('.sidebar-navigation > .nav > li > a');
    var currentSection = null;
    var $projectSubMenu = $('#projects-sub')
    var $projectSubItems = $projectSubMenu.find('a')
    var $projectTitles = $('.project-wrapper')
    var maxHeight = null;
    var re = /#(.*)/
    
    $sections.each(function(i, el) {
      var $el = $(el);
      var height = $el.offset().top;
      
      if ($window.scrollTop() > (height - 70)) {
        currentSection = $el.data('mySection')
        maxHeight = height
      }
    });
    
    $navItems.each( function(i, el) {
      var section = re.exec($(el).data('linkTarget'))[1];
      
      if (currentSection === 'projects') {
        $projectSubMenu.collapse('show')
      } else {
        $projectSubMenu.collapse('hide')
      };
      
      if (section !== currentSection) {
        $(el).removeClass('active');
      } else {
        $(el).addClass('active')
      }
    });
        
    if (currentSection === 'projects') {
      var currentProject = null;
      var maxProjectHeight = null;
      
      $projectTitles.each( function(i, el) {
        var height = $(el).offset().top;
        
        if (($window.scrollTop() + 70) > height) {
          if (height > maxProjectHeight) {
            currentProject = $(el).attr('id')
            maxProjectHeight = height
          }
        }
      })
      
      $projectSubItems.each( function (i, el) {
        var $el = $(el)
        var target = $el.data('linkTarget')
        if (re.exec(target)[1] === currentProject) {
          $el.addClass('active')
        } else {
          $el.removeClass('active')
        }
      })
    }
    
    
    
    if (($window.height() + $window.scrollTop()) > $(document).height() - 1) {
      $('[data-link-target="#about"]').removeClass('active')      
      $('[data-link-target="#contact"]').addClass('active')
    }
  };
  
  setMenu();
  
  $(window).scroll( function() {
    setMenu()
  });
});