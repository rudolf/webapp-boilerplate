(function() {

  define(function(require) {
    var Marionette, Router, TodoListView;
    Marionette = require('marionette');
    TodoListView = require('views/todolist');
    Router = Marionette.AppRouter.extend({
      routes: {
        '': 'index'
      },
      index: function() {
        var app;
        app = require('app');
        return app.content.show(new TodoListView());
      }
    });
    return new Router();
  });

}).call(this);
