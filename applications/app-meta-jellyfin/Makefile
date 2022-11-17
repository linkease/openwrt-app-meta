# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.4
PKG_RELEASE:=20221114
META_TITLE:=Jellyfin私有影院
META_TITLE.en:=Jellyfin
META_DEPENDS:=+luci-app-jellyfin +luci-i18n-jellyfin-zh-cn +docker-deps
META_DESCRIPTION:=Jellyfin是一个免费自由的媒体系统软件，可以让您方便地管理和串流您的媒体。
META_DESCRIPTION.en:=Jellyfin is the volunteer-built media solution that puts you in control of your media.
META_AUTHOR:=Jellyfin
META_TAGS:=net multimedia
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/jellyfin
META_WEBSITE:=https://jellyfin.org
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/advanced.html\#玩转影音

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
