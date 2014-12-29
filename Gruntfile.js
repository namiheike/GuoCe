(function() {
  module.exports = function(grunt) {
    grunt.initConfig({
      pkg: grunt.file.readJSON('package.json'),
      coffee: {
        coffee_to_js: {
          options: {
            bare: false,
            sourceMap: true
          },
          expand: true,
          flatten: false,
          cwd: '',
          src: ['**/*.coffee'],
          dest: '',
          ext: '.js'
        }
      }
    });
    grunt.loadNpmTasks('grunt-contrib-coffee');
    return grunt.registerTask('compile', ['coffee']);
  };

}).call(this);

//# sourceMappingURL=Gruntfile.js.map
