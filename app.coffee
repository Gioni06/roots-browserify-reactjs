axis         = require 'axis'
rupture      = require 'rupture'
browserify   = require 'roots-browserify'
autoprefixer = require 'autoprefixer-stylus'
css_pipeline = require 'css-pipeline'
coffeeReactify = require 'coffee-reactify'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    browserify
      files: ['assets/js/main.coffee']
      out: 'js/bundle.js'
      transforms: [coffeeReactify]
      sourceMap: true
      minify: false
      
    css_pipeline(files: 'assets/css/*.styl')
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
    
  locals:
    dataB:
      items: [
       {
          title : 'hello'
          position : 0
       }
       {
          title : 'duriduri'
          position : 1
       }
       {
          title : 'wachenwachenwachendorf'
          position : 2
       }
      ]
      listName: 'Some Headline'
