express = require('express')
path = require('path')
http = require('http')

app = express()

# configure express application
app.set('port', process.env.PORT || 3000)
app.use(express.favicon())
app.use(express.logger('dev'))
app.use(express.json())
app.use(express.urlencoded())
app.use(express.methodOverride())
app.use(app.router)
app.use(express.bodyParser())
app.use(express.static(path.join(__dirname, '../app')))
console.log "current directory is: #{__dirname}"
app.use((err, req, res, next)->
	console.error(err.stack)
	res.send(500, "Something broke!")
)

app.set('env', 'development')

# development only
if ('development' == app.get('env'))
	app.use(express.errorHandler())

# simple route
#app.get('/', express.static('../app/index.html'))

# host it
http.createServer(app).listen(app.get('port'), ->
	console.log 'Express server listening on port ' + app.get('port')
)
