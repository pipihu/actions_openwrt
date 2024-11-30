#!/bin/bash
TOKEN=$1

# Add helloworld
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default

# Add Openclash
# git clone --depth=1 https://github.com/vernesong/OpenClash.git package/openclash

# Add SSTP Client
git clone https://$TOKEN@github.com/pipihu/openwrt-sstp.git package/openwrt-sstp

if [ -f "$GITHUB_WORKSPACE/workdir/openwrt/package/base-files/files/etc/board.d/99-default_network" ] && [ -f "$GITHUB_WORKSPACE/x86_64/99-default_network" ]; then
    cp "$GITHUB_WORKSPACE/x86_64/99-default_network" "$GITHUB_WORKSPACE/workdir/openwrt/package/base-files/files/etc/board.d/99-default_network"
fi