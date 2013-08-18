http-proxy-loader
======================

Simple boilerplate script for running node-http-proxy, which routes domains/subdomains to their matching localhost port. The routing information is stored in its own file, config.json.

HOW TO RUN:
---

- npm install http-proxy
- create config.json with your domains and Node instances
- run 'node proxy.js' to launch the proxy server alone

You can tell proxy.js to use a different config file like this:

    node proxy.js config_file.json

Note: the config file must have a .json extension.

See how I launch this at startup in http://github.com/dylanized/node-boot

Questions? Hit me up at twitter.com/dylanized
