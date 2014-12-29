module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        options:
          bare: false
          sourceMap: true
        expand: true
        flatten: false
        cwd: ''
        src: [ '**/*.coffee' ]
        dest: ''
        ext: '.js'
        # extDot: 'last'
    # jade:
    #   compile:
    #     options:
    #       client: false
    #       pretty: true
    #     files: [
    #       cwd: ''
    #       src: [ '**/*.jade' ]
    #       dest: ''
    #       expand: true,
    #       ext: '.html'
    #       extDot: 'last'
    #     ]
    haml:
      compile:
        options:
          bundleExec: true
          style: 'expanded'
        files: [
          expand: true
          cwd: ''
          src: [ '**/*.haml' ]
          dest: ''
          ext: '.html'
          # extDot: 'last'
        ]
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-haml2html'
  # grunt.loadNpmTasks 'grunt-contrib-jade'

  grunt.registerTask 'default', ['coffee', 'haml']
