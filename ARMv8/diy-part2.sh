#!/bin/bash
sed -i 's/	commit firewall/	set firewall.@rule[-1].enabled="0"\n&/' feeds/luci/applications/luci-app-vlmcsd/root/etc/uci-defaults/luci-vlmcsd