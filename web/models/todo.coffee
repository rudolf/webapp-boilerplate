define((require) ->
  
  Backbone = require('backbone')

  return Backbone.Model.extend({
    urlRoot: '/todos/'
  })
)
