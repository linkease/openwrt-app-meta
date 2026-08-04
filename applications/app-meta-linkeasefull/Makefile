# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=3.0.4
PKG_RELEASE:=2
META_TITLE:=易有云完整版
META_TITLE.en:=LinkEase Full
META_DEPENDS:=+linkease-common-bin +linkeasefull +luci-app-linkeasefull +luci-lib-linkeasefile +luci-i18n-linkeasefull-zh-cn
META_DESCRIPTION:=易有云完整版提供本地 Web 桌面和 8897 兼容入口，复用独立的易有云文件管理入口，运行时会停用标准版易有云。
META_DESCRIPTION.en:=LinkEase Full provides the local web desktop and legacy 8897 entry, reuses the shared LinkEase file entry, and disables the standard LinkEase runtime while it runs.
META_AUTHOR:=xiaobao
META_ARCH:=x86_64 aarch64
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/linkeasefull
META_WEBSITE:=https://www.linkease.com/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/linkease.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
