(function() {
  Polymer('guoce-init-page', {
    ready: function() {},
    switch_to_world_map: function() {
      return this.asyncFire('core-signal', {
        name: 'app-switch-current-page',
        data: 'world-map'
      });
    }
  });

}).call(this);

//# sourceMappingURL=guoce-init-page.js.map
