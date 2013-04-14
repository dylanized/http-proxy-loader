var http = require('http'),
httpProxy = require('http-proxy');

// TODO: set path via argument
var sites = require('.config');

var options = {
  router: sites;
};

var proxyServer = httpProxy.createServer(options);
proxyServer.listen(80);
