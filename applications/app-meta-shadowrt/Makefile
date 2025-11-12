# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.4
PKG_RELEASE:=1
META_TITLE:=ShadoWRT（系统分身）
META_TITLE.en=ShadoWRT
META_DEPENDS:=+luci-app-shadowrt +luci-i18n-shadowrt-zh-cn +docker-deps
META_DESCRIPTION:=创建管理 iStoreOS/OpenWRT 的分身，可跟随本体升级。目前仅支持 SquashFS 固件。
META_DESCRIPTION.en:=Create and manage clones of iStoreOS/OpenWRT that can be upgraded along with the main system. Currently, only SquashFS firmware is supported.
META_AUTHOR:=jjm2473
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/shadowrt
META_WEBSITE:=https://www.istoreos.com

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
