#!/bin/sh
# Run as root.
#
# Assumes you're using Ubuntu 12.04

curl https://www.kismetwireless.net/code/dists/kismet-release.gpg | apt-key add -
cat > /etc/apt/sources.list.d/kismet.list <<EOF
deb https://www.kismetwireless.net/code/ precise kismet
EOF

apt-get install kismet
kismet # and run through the prompts so that wlan0mon gets created
apt-get install wireshark
# Now you can execute `sh run.sh`
