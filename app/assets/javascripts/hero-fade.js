var HeroFade = function () {
  this.title = document.getElementsByClassName("hero-title")[0];
  this.role = document.getElementsByClassName("hero-role")[0];
  this.bottomBorder = document.getElementById("main-row");
  this._registerListener();
  this._addClass();
}

HeroFade.prototype.setOpacity = function () {
  var opacity = this._calculateOpacity();

  if (opacity == 1 && this.title.style.opacity == 1) { return }
  if (opacity == 0 && this.title.style.opacity == 0) { return }

  this.title.style.opacity = opacity;
  this.role.style.opacity = opacity;
}

HeroFade.prototype._registerListener = function () {
  window.onscroll = function () {
    window.requestAnimationFrame( function () {
      this.setOpacity();
    }.bind(this));
  }.bind(this);
}

HeroFade.prototype._calculateOpacity = function () {
  var gap = this.bottomBorder.offsetTop - window.scrollY;

  // Opacity threshhold is 350 => 200
  if (gap > 350) { return 1 };
  if (gap < 200) { return 0 };
  return ((gap - 200) / 150)
}

HeroFade.prototype._addClass = function () {
  this.title.classList.add("hero");
  this.role.classList.add("hero");
}

setTimeout( function () {
  var f = new HeroFade();
}, 2000);
