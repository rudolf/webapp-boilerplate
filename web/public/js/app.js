(function() {

  define(function(require) {
    var $, Backbone, Marionette, app, router;
    $ = require('jquery');
    Backbone = require('backbone');
    Marionette = require('marionette');
    router = require('router');
    app = new Marionette.Application();
    app.router = router;
    app.addInitializer(function(options) {
      return Backbone.history.start();
    });
    app.addRegions({
      content: '#content'
    });
    return app;
  });

}).call(this);
