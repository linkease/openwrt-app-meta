# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=20250112
PKG_RELEASE:=1
META_TITLE:=msd_lite
META_DEPENDS:=+msd_lite +luci-app-msd_lite +luci-i18n-msd_lite-zh-cn
META_DESCRIPTION:=Multi Stream daemon (msd) 程序的轻量级版本，用于通过HTTP管理网络上的IPTV流
META_DESCRIPTION.en:=Multicast UDP to HTTP proxy
META_AUTHOR:=lancs
META_TAGS:=net service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/msd_lite
META_WEBSITE:=https://github.com/rozhuk-im/msd_lite

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
