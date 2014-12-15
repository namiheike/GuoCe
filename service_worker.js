(function() {
  var self;

  self = this;

  self.addEventListener('install', (function(_this) {
    return function(e) {
      return console.log('service worker install');
    };
  })(this));

}).call(this);
