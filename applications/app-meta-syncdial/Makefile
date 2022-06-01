# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=2.1
PKG_RELEASE:=27
META_TITLE:=多线多拨
META_DEPENDS:=+luci-i18n-mwan3-zh-cn +luci-app-mwan3 +luci-app-mwan3helper +luci-i18n-mwan3helper-zh-cn +mwan3 +luci-app-syncdial
META_DESCRIPTION:=利用macvlan驱动创建多个虚拟WAN口，支持并发多拨，单线多拨/多线多拨，支持IPv6。
META_AUTHOR:=rufengsuixing
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/network/syncdial
META_WEBSITE:=https://github.com/rufengsuixing/luci-app-syncdial

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
