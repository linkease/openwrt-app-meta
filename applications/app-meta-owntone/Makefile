# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.2
PKG_RELEASE:=20230619
META_TITLE:=Owntone音乐平台
META_TITLE.en:=Owntone
META_DEPENDS:=+luci-app-owntone +luci-i18n-owntone-zh-cn +docker-deps
META_DESCRIPTION:=Owntone是一个支持iTunes, AirPlay, Chromecast等的音乐串流平台。
META_DESCRIPTION.en:=Owntone is a music streaming platform that supports iTunes, AirPlay, Chromecast, etc.
META_AUTHOR:=owntone
META_TAGS:=net multimedia
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/owntone
META_WEBSITE:=https://owntone.github.io/owntone-server/
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
