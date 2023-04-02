#!/bin/bash
TOKEN=$1

# Add helloworld
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# Add passwall
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default

# Add SSTP Client
git clone https://$TOKEN@github.com/pipihu/openwrt-sstp.git package/openwrt-sstp