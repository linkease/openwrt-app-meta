# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=2.0.8.9
PKG_RELEASE:=1
META_TITLE:=迅游
META_DEPENDS:=+xunyou +luci-app-xunyou +luci-i18n-xunyou-zh-cn
META_DESCRIPTION:=迅游是一款小巧且功能强大的网游加速器，迅游所采用的第五代网游加速技术能更有效地为您解决网游卡机、掉线、延时高、登录难等问题。支持x86_64，arm64平台。
META_AUTHOR:=xunyou
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/xunyou
META_WEBSITE:=https://www.xunyou.com/
META_ARCH:=x86_64 aarch64
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/xunyou.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
