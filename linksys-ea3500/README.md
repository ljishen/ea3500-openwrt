### Configuration File and System Backup for router **Linksys EA3500**

I have installed [OpenWrt](https://wiki.openwrt.org/toh/linksys/ea3500) on this router and configurated this router as a [Repeater/Extender](https://wiki.openwrt.org/doc/recipes/relayclient) to my [Google WiFi](https://madeby.google.com/wifi/). All the configurations and backups in this folder are corresponding to this setting.

#### Login
- WebUI (LuCI): `https://192.168.1.1` (username `root` without password)
- SSH: `ssh root@192.168.1.1` (no password)

#### Router Techdata
https://wiki.openwrt.org/toh/hwdata/linksys/linksys_ea3500

#### HOME | OpenWRT firmware
https://wiki.openwrt.org/toh/linksys/ea3500

#### WebUI Setup
https://wiki.openwrt.org/doc/howto/luci.essentials

Remember to update variable "architecture" in the script (It should be "kirkwood")

#### How to enable Wi-Fi Repeater
https://www.youtube.com/watch?v=1vsPz_aLZeE

#### Upgrade packages after Internet Connection set up
```bash
root@OpenWrt:~# opkg update && opkg upgrade luci-ssl libiwinfo-lua
```

#### OpenWrt Configuration
https://wiki.openwrt.org/doc/howto/basic.config

#### Backup & Restore
https://wiki.openwrt.org/doc/howto/generic.backup
