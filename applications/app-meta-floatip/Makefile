# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.8
PKG_RELEASE:=2
META_TITLE:=浮动网关
META_TITLE.en:=FloagingGateway
META_DEPENDS:=+floatip +luci-app-floatip +luci-i18n-floatip-zh-cn
META_DESCRIPTION:=浮动网关可以让你在内网有两个相互备份的网关，出现问题会相互切换。
META_DESCRIPTION.en:=FloatingGateway allows two gateway within one lan which can switch between each other in case of a failure.
META_AUTHOR:=jjm2473
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/floatip
META_WEBSITE:=https://github.com/linkease/nas-packages
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/floatip.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
