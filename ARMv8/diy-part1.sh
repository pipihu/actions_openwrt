#!/bin/bash
TOKEN=$1

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# Add SSTP Client
git clone https://$TOKEN@github.com/pipihu/openwrt-sstp.git package/openwrt-sstp

# Add luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
sed -i 's#https://github.com/breakings/OpenWrt#https://github.com/pipihu/lean_openwrt#g' package/luci-app-amlogic/luci-app-amlogic/root/etc/config/amlogic