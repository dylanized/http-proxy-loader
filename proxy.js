// load libraries

	var http = require('http'),
	httpProxy = require('http-proxy');

// check arguments for special config path

	if (process.argv[2]) config = process.argv[2];
	else config = './config.json';

// load config file

	var sites = require(config);

	var options = {
	  router : sites
	};

// launch proxy server

	var proxyServer = httpProxy.createServer(options);
	proxyServer.listen(80);
