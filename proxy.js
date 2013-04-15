// TODO: build forever launcher into JS

var http = require('http'),
httpProxy = require('http-proxy');

// TODO: set path via argument
var sites = require('./config.json');

var options = {
  router: {
      "dev.somewebsite.com": "localhost:1000",
      "www.someothersite.com": "localhost:2000"
}
};

var proxyServer = httpProxy.createServer(options);
proxyServer.listen(80);