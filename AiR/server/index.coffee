express = require('express')
path = require('path')

app = express()

# configure express application
app.use(express.bodyParser())
app.use(express.methodOverride())
app.use(app.router)
app.use((err, req, res, next)->
	console.error(err.stack)
	res.send(500, "Something broke!")
)
