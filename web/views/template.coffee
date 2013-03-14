define((require) ->
  $ = require('jquery')
  Marionette = require('marionette')

  return Marionette.ItemView.extend({
    template: require('templates/template')
  })
)
