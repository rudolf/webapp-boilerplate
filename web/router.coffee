define((require) ->
  Marionette = require('marionette')
  TodoListView = require('views/todolist')
  
  Router = Marionette.AppRouter.extend({
    routes: {
      '': 'index'
    }
    index: () ->
      app = require('app')
      app.content.show(new TodoListView())
  })

  return new Router()
)
