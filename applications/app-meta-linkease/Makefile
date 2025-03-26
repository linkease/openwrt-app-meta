# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.7.0
PKG_RELEASE:=1
META_TITLE:=易有云
META_TITLE.en:=LinkEase
META_DEPENDS:=+linkease +luci-app-linkease +luci-i18n-linkease-zh-cn
META_DESCRIPTION:=易有云提供文件的外网访问，相册备份，文件同步，异地组网功能。
META_DESCRIPTION.en:=LinkEase is a private cloud storage with its own remote connection to access personal files anytime, anywhere
META_AUTHOR:=xiaobao
META_ARCH:=x86_64 aarch64
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/linkease
META_WEBSITE:=https://www.linkease.com/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/linkease.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
