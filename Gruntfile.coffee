module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        options:
          trace: true
          bare: false
          sourceMap: true
        files: [
          expand: true
          flatten: false
          cwd: ''
          src: [ '**/*.coffee' ]
          dest: ''
          ext: '.js'
          extDot: 'last'
        ]
    sass:
      compile:
        options:
          trace: true
          # sourcemap: true
          # debugInfo: true
          lineNumbers: true
        files: [
          expand: true
          flatten: false
          cwd: ''
          src: [ '**/*.sass' ]
          dest: ''
          ext: '.css'
          extDot: 'last'
        ]
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
          trace: true
          bundleExec: true
          style: 'expanded'
        files: [
          expand: true
          cwd: ''
          src: [ '**/*.haml' ]
          dest: ''
          ext: '.html'
          extDot: 'last'
        ]

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-haml2html'
  # grunt.loadNpmTasks 'grunt-contrib-jade'

  grunt.registerTask 'default', ['coffee', 'haml', 'sass']
