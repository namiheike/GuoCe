(function() {
  module.exports = function(grunt) {
    grunt.initConfig({
      pkg: grunt.file.readJSON('package.json'),
      coffee: {
        compile: {
          options: {
            trace: true,
            bare: false,
            sourceMap: true
          },
          files: [
            {
              expand: true,
              flatten: false,
              cwd: '',
              src: ['**/*.coffee'],
              dest: '',
              ext: '.js',
              extDot: 'last'
            }
          ]
        }
      },
      sass: {
        compile: {
          options: {
            trace: true,
            lineNumbers: true
          },
          files: [
            {
              expand: true,
              flatten: false,
              cwd: '',
              src: ['**/*.sass'],
              dest: '',
              ext: '.css',
              extDot: 'last'
            }
          ]
        }
      },
      haml: {
        compile: {
          options: {
            trace: true,
            bundleExec: true,
            style: 'expanded'
          },
          files: [
            {
              expand: true,
              cwd: '',
              src: ['**/*.haml'],
              dest: '',
              ext: '.html',
              extDot: 'last'
            }
          ]
        }
      }
    });
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-haml2html');
    return grunt.registerTask('default', ['coffee', 'haml', 'sass']);
  };

}).call(this);

//# sourceMappingURL=Gruntfile.js.map
