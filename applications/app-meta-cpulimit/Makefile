# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.2.0
PKG_RELEASE:=1
META_TITLE:=CPU频率限制
META_DEPENDS:=+cpulimit-ng +luci-app-cpulimit +luci-i18n-cpulimit-zh-cn
META_DESCRIPTION:=CPU频率限制是一款可以调整CPU占用率的插件
META_AUTHOR:=Angelo Marletta
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/system/cpulimit
META_WEBSITE:=https://code.google.com/archive/p/cpulimit-ng

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
