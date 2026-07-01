#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=虚拟狗
META_TITLE.en:=VirtualDog
META_DEPENDS:=+luci-app-virtualdog +virtualdog
META_DESCRIPTION:=轻量虚拟狗 Web 管理工具
META_DESCRIPTION.en:=VirtualDog Web management UI
META_AUTHOR:=virtualdog
META_ARCH:=x86_64 aarch64
META_TAGS:=tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/virtualdog
META_WEBSITE:=https://github.com/Carseason/openwrt-app-actions
META_UCI:=virtualdog

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
