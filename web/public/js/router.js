(function() {

  define(function(require) {
    var Marionette, Router, TemplateView;
    Marionette = require('marionette');
    TemplateView = require('views/template');
    Router = Marionette.AppRouter.extend({
      routes: {
        '': 'index'
      },
      index: function() {
        var app;
        app = require('app');
        app.content.show(new TemplateView());
        return console.log('show index');
      }
    });
    return new Router();
  });

}).call(this);
