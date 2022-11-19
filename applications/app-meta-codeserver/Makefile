# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=20221114
META_TITLE:=CodeServer
META_TITLE.en:=CodeServer
META_DEPENDS:=+luci-app-codeserver +luci-i18n-codeserver-zh-cn +docker-deps
META_DESCRIPTION:=一个在线版本的VSCode，可以在线开发。
META_DESCRIPTION.en:=An online version of VSCode that can be developed online.
META_AUTHOR:=Coder Technologies
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/codeserver
META_WEBSITE:=https://coder.com/
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
