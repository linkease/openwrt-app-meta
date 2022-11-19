# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=20221114
META_TITLE:=Gogs服务
META_TITLE.en:=Gogs
META_DEPENDS:=+luci-app-gogs +luci-i18n-gogs-zh-cn +docker-deps
META_DESCRIPTION:=一款极易搭建的自助Git服务。
META_DESCRIPTION.en:=An easy-to-build self-service Git service.
META_AUTHOR:=Gogs
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/gogs
META_WEBSITE:=https://gogs.io/
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
