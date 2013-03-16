
Todo = require('../models/todo')

# List todos
exports.list = (req, res) ->
  res.json([{title: 'First todo'}])

exports.post = (req, res) ->
  todo = new Todo({title: 'hello'})
  todo.save((err) ->
    if err? then next(err)
    res.json(todo)
  )

exports.put = (req, res) ->
  res.send(404, 'Implement')
