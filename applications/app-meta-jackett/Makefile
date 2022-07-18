# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=20220718
META_TITLE:=Jackett
META_DEPENDS:=+luci-app-jackett +luci-i18n-jackett-zh-cn
META_DESCRIPTION:=Jackett 是维护索引器抓取和翻译逻辑的单一存储库 - 消除了其他应用程序的负担。
META_DESCRIPTION.en:=Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.
META_AUTHOR:=Jackett
META_TAGS:=nas download
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/jackett
META_WEBSITE:=https://github.com/Jackett/Jackett
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/advanced.html\#玩转影音

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
