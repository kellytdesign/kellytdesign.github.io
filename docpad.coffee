# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {

  ignoreCustomPatterns: /templates/

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

  environments:  # default
    production:
      plugins:
        stylus:
          stylusOptions:
            compress: true

    development:  # default

      # Plugins
      plugins:  # example
        livereload:
          styleBlock: " "

      # Always refresh from server
      maxAge: false  # default

      # Listen to port 9005 on the development environment
      port: 8080  # example
}

# Export the DocPad Configuration
module.exports = docpadConfig