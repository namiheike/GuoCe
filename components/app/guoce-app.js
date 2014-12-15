(function() {
  Polymer('guoce-app', {
    selected: 'splash',
    ready: (function(_this) {
      return function() {
        var self;
        self =  this ;
        return self.job('job1', function() {
          return this.selected = 'world-map';
        }, 1000);
      };
    })(this),
    transition_end_action: (function(_this) {
      return function() {
        return console.log('transition end');
      };
    })(this)
  });

}).call(this);
