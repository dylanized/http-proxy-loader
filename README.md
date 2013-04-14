http-proxy-loader
======================

Simple boilerplate script for running node-http-proxy.

This script routes domains/subdomains to their matching Node localhost port.

Start this script using Forever, with something like this:

forever start --uid 'proxy' --append -l /sites/.forever/logs/proxy.log --outFile /sites/.forever/logs/proxy.out.log --errFile /sites/.forever/logs/proxy.err.log /sites/.scripts/proxy.js

TODOS:
- move sites array to separate file
- double check it handles both www and base urls
- write a launch script to encapsulate the forever syntax
- 
