(function() {
  Polymer('guoce-world-map', {
    domReady: function() {
      var circle1, main_canvas;
      main_canvas = this.$.mainCanvas;
      paper.setup(main_canvas);
      circle1 = new paper.Path.Circle({
        center: new paper.Point(100, 100),
        radius: 100,
        strokeColor: 'black'
      });
      circle1.on('mouseenter', (function(_this) {
        return function(e) {
          var self;
          self =  this ;
          return self.fillColor = 'red';
        };
      })(this));
      return circle1.on('mouseleave', (function(_this) {
        return function(e) {
          var self;
          self =  this ;
          return self.fillColor = 'white';
        };
      })(this));
    }
  });

}).call(this);

//# sourceMappingURL=guoce-world-map.js.map
