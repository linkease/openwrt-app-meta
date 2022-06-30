# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0-25.0
PKG_RELEASE:=1
META_TITLE:=udpxy
META_DEPENDS:=+luci-app-udpxy +luci-i18n-udpxy-zh-cn +udpxy
META_DESCRIPTION:=udpxy是UDP到HTTP的多播流量中继守护程序
META_DESCRIPTION.en:=Multicast UDP to HTTP proxy
META_AUTHOR:=Pavel Cherenkov
META_TAGS:=net service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/udpxy
META_WEBSITE:=https://github.com/pcherenkov/udpxy

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
