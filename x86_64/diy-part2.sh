#!/bin/bash

# disalbe vmlcsd port
sed -i 's/	commit firewall/	set firewall.@rule[-1].enabled="0"\n&/' feeds/luci/applications/luci-app-vlmcsd/root/etc/uci-defaults/luci-vlmcsd

# modify shadowsocks-rust pkg_hash
sed -i 's/1c009fc412588cae6145d37382fca35708e3b79f806a90d5cb0fa24e0097d09f/080d2042eede744d2182ebb47929b504cd42ef8e0eefacdc5ece402f99328ea8/' feeds/helloworld/shadowsocks-rust/Makefile


# fix ssrp bug
# if ! grep -q "set uhttpd.main.max_requests=50" feeds/helloworld/luci-app-ssr-plus/root/etc/uci-defaults/luci-ssr-plus; then
#     sed -i '/commit firewall/a\	set uhttpd.main.max_requests=50\n	commit uhttpd' feeds/helloworld/luci-app-ssr-plus/root/etc/uci-defaults/luci-ssr-plus
# fi