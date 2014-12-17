(function() {
  Polymer({
    ready: function() {},
    get_values: function() {
      return this.$.localStorage.value;
    },
    set_values: function(hash) {
      var key, new_values;
      console.log('set values');
      new_values = this.get_values();
      for (key in hash) {
        new_values[key] = hash[key];
      }
      this.$.localStorage.value = new_values;
      return this.$.localStorage.save();
    },
    clear: function() {
      this.$.localStorage.value = {};
      return this.$.localStorage.save();
    }
  });

}).call(this);
