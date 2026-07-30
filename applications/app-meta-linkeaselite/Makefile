# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=3.0.0
PKG_RELEASE:=1
META_TITLE:=易有云Lite
META_TITLE.en:=LinkEaseLite
META_DEPENDS:=+linkeaselite +luci-app-linkeaselite +luci-i18n-linkeaselite-zh-cn
META_DESCRIPTION:=易有云Lite提供适合小内存设备的远程访问和轻量文件管理能力。
META_DESCRIPTION.en:=LinkEaseLite provides remote access and lightweight file management for small-memory devices.
META_AUTHOR:=xiaobao
META_ARCH:=x86_64 aarch64 arm
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/linkeaselite/config
META_WEBSITE:=https://www.linkease.com/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/linkease.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
