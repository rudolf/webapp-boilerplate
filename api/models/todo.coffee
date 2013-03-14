mongoose = require('mongoose')
Schema = mongoose.Schema

TodoSchema = new Schema({
  #Attributes
})

return mongoose.model('Todo', TodoSchema)
