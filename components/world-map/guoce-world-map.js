(function() {
  Polymer('guoce-world-map', {
    domReady: function() {
      var main_canvas, path, start;
      main_canvas = this.$.mainCanvas;
      paper.setup(main_canvas);
      path = new paper.Path();
      start = new paper.Point(100, 100);
      path.strokeColor = 'black';
      path.moveTo(start);
      path.lineTo(start.add([200, -50]));
      paper.view.onFrame = (function(_this) {
        return function(event) {
          return path.rotate(3);
        };
      })(this);
      return paper.view.draw();
    }
  });

}).call(this);

//# sourceMappingURL=guoce-world-map.js.map
