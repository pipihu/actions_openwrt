#!/bin/bash
TOKEN=$1

# Add helloworld
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# Add SSTP Client
git clone https://$TOKEN@github.com/pipihu/openwrt-sstp.git package/openwrt-sstp