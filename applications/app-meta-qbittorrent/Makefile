# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=4.6.7
PKG_RELEASE:=1
META_TITLE:=qBittorrent下载器
META_TITLE.en:=qBittorrent
META_DEPENDS:=+qBittorrent-static +luci-app-qbittorrent +luci-i18n-qbittorrent-zh-cn
META_DESCRIPTION:=专业磁力种子下载工具。
META_DESCRIPTION.en:=A free and reliable P2P BitTorrent client.
META_AUTHOR:=The qBittorrent project
META_ARCH:=x86_64 aarch64
META_TAGS:=download tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/nas/qBittorrent
META_WEBSITE:=https://www.qbittorrent.org/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/qBittorrent.html
META_AUTOCONF:=path
META_UCI:=qbittorrent

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
