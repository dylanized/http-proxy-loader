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

- install Forever with 'npm install -g forever'
- create the default proxy log file with 'touch ~/.forever/proxy'
- run 'bash start.sh' to launch using the defaults

By default, Forever will log its output in your system's ~/.forever folder, and put the child script's output and error  files inside your proxy script directory. Start.sh will name all log files the same as your process name, which defaults to 'proxy'.

You can pass start.sh the following parameters:

    bash start.sh config_file.json process_name /path/to/forever/log /path/to/script/log /path/to/http-proxy-loader

Real world example:

    bash start.sh ../config.json proxy /sites/.forever/logs /sites/.forever/logs

Note: If you use custom forever log directory, you'll need to make sure the log file exists first. Also start.sh must be run from the proxy script folder.
