#!/bin/bash

# disalbe vmlcsd port
# sed -i 's/	commit firewall/	set firewall.@rule[-1].enabled="0"\n&/' feeds/luci/applications/luci-app-vlmcsd/root/etc/uci-defaults/luci-vlmcsd

# fix ssrp bug
# if ! grep -q "set uhttpd.main.max_requests=50" feeds/helloworld/luci-app-ssr-plus/root/etc/uci-defaults/luci-ssr-plus; then
#     sed -i '/commit firewall/a\	set uhttpd.main.max_requests=50\n	commit uhttpd' feeds/helloworld/luci-app-ssr-plus/root/etc/uci-defaults/luci-ssr-plus
# fi

# 设置eth0为wan
# $GITHUB_WORKSPACE = /home/runner/work/actions_openwrt/actions_openwrt
if [ -f "$GITHUB_WORKSPACE/openwrt/package/base-files/files/etc/board.d/99-default_network" ] && [ -f "$GITHUB_WORKSPACE/x86_64/99-default_network" ]; then
    cp "$GITHUB_WORKSPACE/x86_64/99-default_network" "$GITHUB_WORKSPACE/openwrt/package/base-files/files/etc/board.d/99-default_network"
fi
