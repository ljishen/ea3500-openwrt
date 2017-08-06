#!/bin/sh

set -e

#assumes the user has egrep, wget, ssh, and scp
 
# Change this to match your router
architecture="kirkwood"
 
# These should be fine unless you've changed something
user="root"
ip_address="192.168.1.1"
 
url="https://downloads.openwrt.org/snapshots/trunk/${architecture}/generic/packages/"
tmpdir="/tmp/luci-offline"
packages_base="liblua lua libuci-lua libubus libubus-lua uhttpd rpcd"
packages_luci="luci-base luci-lib-ip luci-lib-nixio luci-theme-bootstrap luci-mod-admin-full luci-lib-jsonc"
 
mkdir -p "$tmpdir"
cd "$tmpdir"
 
 
ssh "${user}@${ip_address}" mkdir -p /tmp/luci-offline-packages
scp *.ipk "${user}@${ip_address}":/tmp/luci-offline-packages
ssh "${user}@${ip_address}" opkg install /tmp/luci-offline-packages/*.ipk
ssh "${user}@${ip_address}" rm -rf /tmp/luci-offline-packages/
 
ssh "${user}@${ip_address}" /etc/init.d/uhttpd start
ssh "${user}@${ip_address}" /etc/init.d/uhttpd enable
