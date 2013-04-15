http-proxy-loader
======================

Simple boilerplate script for running node-http-proxy.

This script routes domains/subdomains to their matching Node localhost port. The routing information is stored in its own file, config.json.

HOW TO RUN:
---

# install http-proxy module with 'npm install http-proxy'
# copy config.json.sample to config.json
# edit config.json with your domains and Node instances
# run 'node proxy.js' to launch the proxy server alone

You can tell proxy.js to use a different config file like this:

node proxy.js config_file.json

HOW TO RUN IN THE BACKGROUND:
---

# install Forever with 'npm install -g forever'
# run 'bash start.sh' to launch using the defaults

By default, Forever will the forever output in your system's ~/.forever folder, and put the child script's output and error  files inside your proxy script directory. Start.sh will name all log files the same as your process name, which defaults to 'proxy'.

You can pass start.sh the following parameters:

bash start.sh config_file.json process_name /path/to/forever/log /path/to/script/log /path/to/http-proxy-loader

TO DO:
- get node parameter working w/ forever