define((require) ->
  $ = require('jquery')
  Backbone = require('backbone')
  Marionette = require('marionette')
  router = require('router')

  app = new Marionette.Application()
  app.router = router

  app.addInitializer((options) ->
    Backbone.history.start()
  )

  app.addRegions({
    content: '#content'
  })
 
  return app
)
