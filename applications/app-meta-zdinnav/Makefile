# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.1
PKG_RELEASE:=1
META_TITLE:=智淀导航
META_TITLE.en:=ZdinNav
META_DEPENDS:=+luci-app-zdinnav +luci-i18n-zdinnav-zh-cn +docker-deps
META_DESCRIPTION:=智淀导航：网页书签管理工具，搭建专属于你的导航网站。
META_DESCRIPTION.en:=ZdinNav:A web bookmark manager to build your own personalized navigation site.
META_AUTHOR:=tkme
META_ARCH:=x86_64 aarch64 arm
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/zdinnav
META_WEBSITE:=https://github.com/MyTkme/ZdinNav-Link
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
