# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.8
PKG_RELEASE:=1
META_TITLE:=酷友社Kai
META_TITLE.en:=KoolCenter KaiPlus
META_DEPENDS:=+luci-app-kaiplus +kaiplus +luci-lib-linkeaseauth
META_DESCRIPTION:=KaiPlus AI 解决各种问题，加速软件安装
META_DESCRIPTION.en:=KaiPlus AI solve various network issues and speed up software installation.
META_AUTHOR:=koolcenter
META_ARCH:=x86_64 aarch64
META_TAGS:=system ai
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/kaiplus/open
META_WEBSITE:=https://ai.koolcenter.com
META_AUTOCONF:=path enable
META_UCI:=kaiplus

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
