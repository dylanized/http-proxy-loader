http-proxy-loader
======================

Simple boilerplate script for running node-http-proxy.

This script routes domains/subdomains to their matching Node localhost port.

Start by running "bash start.sh" which will use Forever to launch proxy.js

TODOS:

- get separate file working
- double check it handles both www and base urls
- move start.sh forever launcher into Javascript
- pull variables out for config path, forever paths/name
