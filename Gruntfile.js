(function() {
  module.exports = function(grunt) {
    grunt.initConfig({
      pkg: grunt.file.readJSON('package.json'),
      coffee: {
        compile: {
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
      },
      haml: {
        compile: {
          options: {
            bundleExec: true,
            style: 'expanded'
          },
          files: [
            {
              expand: true,
              cwd: '',
              src: ['**/*.haml'],
              dest: '',
              ext: '.html'
            }
          ]
        }
      }
    });
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-haml2html');
    return grunt.registerTask('default', ['coffee', 'haml']);
  };

}).call(this);

//# sourceMappingURL=Gruntfile.js.map
