define((require) ->
  $ = require('jquery')
  Backbone = require('backbone')
  Marionette = require('marionette')
  TodoModel = require('models/todo')
  TodoView = require('views/todo')

  TodoCollection = Backbone.Collection.extend({
    model: TodoModel
    url: '/todos/'
  })

  return Marionette.CollectionView.extend({
    itemView: TodoView
    template: require('templates/todo')
    collection: new TodoCollection()
    initialize: () ->
      @.collection.fetch()
  })
)
