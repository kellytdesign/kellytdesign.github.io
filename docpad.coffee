# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {


  templateData:
    site:
      url: 'http://kellytdesign.github.io/dotcom/'
      styles: [
        'styles/index.css'
      ]
      scripts: [
        'vendor/jquery.js'
        'vendor/waypoints.min.js'
        'scripts/functions.js'
      ]

      preparedFilesPath: (url, array) ->
        scripts_string = ''
        for file in array
          scripts_string = url + file

  watchOptions:
    catchupDelay: 0
  regenerateDelay: 0

  plugins:
    stylus:
      stylusLibraries:
        nib: false
        'autoprefixer-stylus': true
          # browsers: ['> 0.1%', 'BlackBerry']
      stylusOptions:
        compress: false

  environments:

    static:

      templateData:
        site:
          url: 'http://kellytdesign.com/'

      plugins:
        stylus:
          stylusOptions:
            compress: true

    development:

      plugins:
        livereload:
          styleBlock: " "

      # Always refresh from server
      maxAge: false  # default

      # Listen to port 9005 on the development environment
      port: 4000  # example

      templateData:
          site:
              url: 'http://localhost:4000/'

  collections:
    projects: ->
      @getCollection("html").findAllLive({relativeDirPath: "projects"},[{order: 1}])
    projectFigures: ->
      @getCollection("html").findAllLive({relativeDirPath: "projects/figures"})
}

# Export the DocPad Configuration
module.exports = docpadConfig