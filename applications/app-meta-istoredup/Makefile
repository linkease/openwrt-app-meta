# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.6
PKG_RELEASE:=20250325
META_TITLE:=iStoreDup
META_DEPENDS:=+vmease +luci-app-istoredup +luci-i18n-istoredup-zh-cn +docker-deps
META_DESCRIPTION:=iStoreOS 容器版。此插件已废弃，iStoreOS 请使用更方便的「ShadoWRT」，保留此插件仅为其他系统体验 iStoreOS 之用
META_DESCRIPTION.en:=iStoreOS Container Edition. This plugin is deprecated. For iStoreOS, please use the more convenient "ShadoWRT". This plugin is retained only for other operating systems to experience iStoreOS
META_AUTHOR:=xiaobao
META_TAGS:=system
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/istoredup
META_WEBSITE:=https://www.istoreos.com
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/istoredup.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
