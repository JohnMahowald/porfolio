var HeroFade = function () {
  this.title = document.getElementsByClassName("hero-title")[0];
  this.role = document.getElementsByClassName("hero-role")[0];
  this.bottomBorder = document.getElementById("main-row");
  this._registerListener();
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
    this.setOpacity();
  }.bind(this);
}

HeroFade.prototype._calculateOpacity = function () {
  var gap = this.bottomBorder.offsetTop - window.scrollY;

  // Opacity threshhold is 250 => 200
  if (gap > 300) { return 1 };
  if (gap < 200) { return 0 };
  return ((gap - 200) / 100)
}



setTimeout( function () {
  var f = new HeroFade();
}, 20);
