define((require) ->
  Marionette = require('marionette')
  TemplateView = require('views/template')
  
  Router = Marionette.AppRouter.extend({
    routes: {
      '': 'index'
    }
    index: () ->
      app = require('app')
      app.content.show(new TemplateView())
      console.log('show index')
  })

  return new Router()
)
