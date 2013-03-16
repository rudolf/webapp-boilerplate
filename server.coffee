http = require("http")
express = require("express")
todos = require("./api/routes/todos")
mongoose = require('mongoose')
#http = require("http")
path = require("path")

mongoose.connect('localhost', 'test')

app = express()
app.configure(() ->
  app.set("port", process.env.PORT or 3000)
  app.use(express.favicon())
  app.use(express.logger("dev"))
  app.use(express.bodyParser())
  app.use(app.router)
  app.use(express.static(path.join(__dirname, "/web/public")))
)

app.configure("development", () ->
  app.use(express.errorHandler())
)

#app.get("/", routes.index)
app.get("/todos", todos.list)
app.put("/todos", todos.post)
app.put("/todos/:id", todos.put)

module.exports = app

### Handled by grunt-express
http.createServer(app).listen(app.get("port"), () ->
  console.log "Express server listening on port " + app.get("port")
)
###
