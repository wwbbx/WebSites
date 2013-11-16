// module dependencies
application_root = __dirname;
express = require('express');
path = require('path');

// Create server
app = express();

// Configure server
app.configure(function(){
    // parse request body and populates request.body
    app.use(express.methodOverride());

    // perform route lookup based on URL and HTTP method
    app.use(app.router);

    // where to serve static content
    app.use(express.static(path.join(application_root, 'site')));

    // show all errors in development
    app.use(express.errorHandler({dumpException:true, showStack:true}));

});

// Router


// Start server
port = 3566;
app.listen(port, function(){
    console.log('Express server listening on port %d in %s mode',
                port, app.settings.env)
});