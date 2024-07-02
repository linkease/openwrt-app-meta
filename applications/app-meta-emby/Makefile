# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.3
PKG_RELEASE:=20231117
META_TITLE:=Emby影院
META_TITLE.en:=Emby
META_DEPENDS:=+luci-app-emby +luci-i18n-emby-zh-cn +docker-deps
META_DESCRIPTION:=Emby是一个多媒体串流平台，可以让您方便地管理和串流您的媒体。
META_DESCRIPTION.en:=Emby is the volunteer-built media solution that puts you in control of your media.
META_AUTHOR:=Emby
META_TAGS:=net multimedia
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/emby
META_WEBSITE:=https://emby.media/
META_TUTORIAL:=
META_AUTOCONF:=path
META_UCI:=emby

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
