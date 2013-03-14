path = require('path')

module.exports = (grunt) ->
  grunt.initConfig({
    express: {
      server: {
        bases: ['public']
        debug: true
        server: path.resolve('./server.coffee')
        monitor: {
          command: 'coffee'
          watch: true
        }
      }
    }

    coffee: {
      compile: {
        files: [
          expand: true
          cwd: 'web/'
          src: '**/*.coffee'
          dest: 'web/public/js/'
          ext: '.js'
        ]
      }
    }

    jade: {
      compile: {
        options: {
          client: true
          namespace: false
          amd: true
        }
        files: [
          expand: true
          cwd: 'web/templates'
          src: '**/*.jade'
          dest: 'web/public/js/templates'
          ext: '.js'
        ]
      }
    }

    watch: {
      coffee: {
        files: 'web/**/*.coffee'
        tasks: ['coffee']
      }
    }

  })

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jade')
  grunt.loadNpmTasks('grunt-contrib-requirejs')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-express')

  grunt.registerTask('build', 'coffee jade stylus requirejs')
  grunt.registerTask('build-dev', 'coffee jade')
