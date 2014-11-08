exports.config =
  # See https://github.com/brunch/brunch/blob/master/docs/config.md for documentation.
  plugins:
    static_jade:
      extension: ".static.jade"
    autoReload:
      enabled: true
      port: 3334

  paths:
    public: 'www'
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^bower_components/
      order:
        before: []

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^app/
        'stylesheets/vendor.css': /^bower_components/
      order:
        before: []
        after: []

    # Ensure that our jade templates don't get compiled into our app JS.
    templates:
      joinTo: 'javascripts/template.js'

  conventions:
    assets: /(assets|font)/
