# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=9.8.0
PKG_RELEASE:=1
META_TITLE:=UU游戏加速器
META_DEPENDS:=+uugamebooster +luci-i18n-uugamebooster-zh-cn +luci-app-uugamebooster
META_DESCRIPTION:=付费游戏加速器 (开启服务后，使用手机APP绑定路由器并指定加速主机)。
META_AUTHOR:=网易
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/uuplugin
META_WEBSITE:=https://uu.163.com/
META_ARCH:=x86_64 aarch64

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
