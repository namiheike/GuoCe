(function() {
  Polymer({
    switch_current_page: function(page_name) {
      return this.asyncFire('core-signal', {
        name: 'app-switch-current-page',
        data: page_name
      });
    }
  });

}).call(this);

//# sourceMappingURL=guoce-base.js.map
