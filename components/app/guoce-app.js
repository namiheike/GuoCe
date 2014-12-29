(function() {
  Polymer('guoce-app', {
    selected: 'splash',
    ready: function() {
      return this.init_app();
    },
    init_app: function() {
      this.$.globals.clear();
      return this.job('job_switch_to_init_page', function() {
        return this.selected = 'init-page';
      }, 1000);
    },
    transition_end_action: function() {},
    switch_current_page: function(e, page_name, sender) {
      return this.selected = page_name;
    }
  });

}).call(this);

//# sourceMappingURL=guoce-app.js.map
