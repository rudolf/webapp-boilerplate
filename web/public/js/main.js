(function() {

  requirejs.config({
    baseUrl: 'js',
    paths: {
      'backbone': 'lib/backbone',
      'backbone.babysitter': 'lib/backbone.babysitter',
      'backbone.wreqr': 'lib/backbone.wreqr',
      'jade': 'templates/jade',
      'jquery': 'lib/jquery',
      'marionette': 'lib/backbone.marionette',
      'underscore': 'lib/underscore'
    },
    shim: {}
  });

  require(['app'], function(app) {
    return app.start();
  });

}).call(this);
