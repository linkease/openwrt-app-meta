# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.7
PKG_RELEASE:=1
META_TITLE:=ShadoWRT
META_DEPENDS:=+luci-app-shadowrt +luci-i18n-shadowrt-zh-cn +docker-deps
META_DESCRIPTION:=ShadoWRT（系统分身）可创建管理 iStoreOS/OpenWRT 的分身，分身可跟随本体升级且保留数据
META_DESCRIPTION.en:=Create and manage clones of iStoreOS/OpenWRT that can be upgraded along with the main system
META_AUTHOR:=jjm2473
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/shadowrt
META_WEBSITE:=https://www.istoreos.com

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
