# TODO: pull out hardcoded paths and names

forever start --uid 'proxy' --append -l /sites/.forever/logs/proxy.log --outFile /sites/.forever/logs/proxy.out.log --errFile /sites/.forever/logs/proxy.err.log /sites/.scripts/proxy.js
