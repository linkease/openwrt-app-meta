# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=4.6.7.10
PKG_RELEASE:=2
META_TITLE:=qBittorrent增强版
META_TITLE.en:=qBittorrent Enhanced Edition
META_DEPENDS:=+qBittorrent-EE +luci-app-qbittorrent-ee +luci-i18n-qbittorrent-ee-zh-cn
META_DESCRIPTION:=专业磁力种子下载工具。相比官方版本增加自动屏蔽吸血客户端功能。
META_DESCRIPTION.en:=A free and reliable P2P BitTorrent client with blocking leeching clients automatically.
META_AUTHOR:=qBittorrent/Husky
META_ARCH:=x86_64 aarch64
META_TAGS:=download tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/nas/qBittorrent-EE
META_WEBSITE:=https://github.com/c0re100/qBittorrent-Enhanced-Edition/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/qBittorrent.html
META_AUTOCONF:=path
META_UCI:=qbittorrent_ee

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
