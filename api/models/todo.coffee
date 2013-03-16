mongoose = require('mongoose')
Schema = mongoose.Schema

TodoSchema = new Schema({
  title: String
  done: Boolean
})

return mongoose.model('Todo', TodoSchema)
