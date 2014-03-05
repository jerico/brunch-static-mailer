exports.config = 
  modules:
    wrapper: false
    definition: false
  files:
    stylesheets:
      joinTo: 'app.css'
      ignored: /^\_*/
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(vendor|bower_components)/
    templates:
      joinTo:
        'assets/templates.js': /.+\.jade$/
  plugins:
    jade:
      options:
        pretty: yes
    static_jade:
      extensions: ".jade"
    autoReload:
      enabled: true
      delay: 200
