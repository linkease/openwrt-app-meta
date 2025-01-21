# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0
PKG_RELEASE:=20230712
META_TITLE:=AirPlay2
META_DEPENDS:=+shairport-sync-openssl +luci-app-airplay2 +luci-i18n-airplay2-zh-cn
META_DESCRIPTION:=把软路由变成 AirPlay 音箱
META_DESCRIPTION.en:=AirPlay compatible audio player
META_AUTHOR:=mikebrady
META_TAGS:=net multimedia
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/airplay2
META_WEBSITE:=https://github.com/mikebrady/shairport-sync
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/airplay2.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
