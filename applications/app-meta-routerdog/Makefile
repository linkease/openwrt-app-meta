# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.4.10
PKG_RELEASE:=2
META_TITLE:=路由狗
META_TITLE.en:=routerdog
META_DEPENDS:=+luci-app-routerdog +luci-i18n-routerdog-zh-cn +routergo +docker-deps
META_DESCRIPTION:=为iStoreOS和Openwrt提供NAS界面和APP
META_DESCRIPTION.en:=The new naspage and app for iStoreOS or Openwrt.
META_AUTHOR:=Carseason
META_ARCH:=x86_64 aarch64
META_TAGS:=system nas
META_LUCI_ENTRY:=/cgi-bin/luci/admin/routerdog
META_WEBSITE:=https://www.routerdog.top/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
