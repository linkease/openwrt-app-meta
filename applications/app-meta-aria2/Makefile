# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=Aria2下载器
META_DEPENDS:=+aria2 +ariang +luci-app-aria2 +luci-i18n-aria2-zh-cn
META_DESCRIPTION:=Aria2是一款自由、跨平台命令行界面的下载管理器
META_AUTHOR:=Tatsuhiro Tsujikawa
META_TAGS:=download tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/aria2
META_WEBSITE:=https://aria2.github.io/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/common.html\#aria2下载

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
