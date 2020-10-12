#!/bin/bash
pssh -h ip.txt -i "cd /tmp/jepsen; apt-get install -y libcurl3; dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb; dpkg -i mongodb-org-mongos_4.2.6_amd64.deb; dpkg -i mongodb-org-server_4.2.6_amd64.deb"
