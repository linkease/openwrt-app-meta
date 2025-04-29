# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=4.0.6
PKG_RELEASE:=2
META_TITLE:=Transmission
META_DEPENDS:=+transmission-daemon-openssl +transmission-web-control +luci-app-transmission +luci-i18n-transmission-zh-cn
META_DESCRIPTION:=专业磁力种子下载工具
META_DESCRIPTION.en:=Transmission is a cross-platform BitTorrent client.
META_AUTHOR:=The Transmission project
META_TAGS:=download tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/transmission
META_WEBSITE:=https://transmissionbt.com/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/common.html\#transmission下载
META_AUTOCONF:=path
META_UCI:=transmission

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
