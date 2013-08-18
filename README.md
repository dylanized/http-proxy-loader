http-proxy-loader
======================

Simple boilerplate script for running node-http-proxy, which routes domains/subdomains to their matching localhost port. The routing information is stored in its own file, config.json.

HOW TO RUN:
---

- install http-proxy module with 'npm install http-proxy'
- copy config.json.sample to config.json
- edit config.json with your domains and Node instances
- run 'node proxy.js' to launch the proxy server alone

You can tell proxy.js to use a different config file like this:

    node proxy.js config_file.json

Note: the config file must have a .json extension.

HOW TO RUN IN THE BACKGROUND:
---

You can run the proxy loader in the background using Forever. To launch simple, just run:

	forever start proxy.js your_config.json

For more control, use this syntax:

	forever start --uid process_name --append -l ~/.forever/process_name.log --outFile ~/.forever/process_name.out.log --errFile ~/.forever/process_name.err.log proxy.js your_config.json

Questions? hit me up at d@dylanized.com
