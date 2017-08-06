# ea3500-openwrt

Configuration File and System Backup for **Linksys EA3500** router

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
