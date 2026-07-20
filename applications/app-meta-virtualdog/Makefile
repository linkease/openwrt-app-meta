#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.1
PKG_RELEASE:=1
META_TITLE:=VirtualDog虚拟机
META_TITLE.en:=VirtualDog
META_DEPENDS:=+luci-app-virtualdog +virtualdog
META_DESCRIPTION:=基于Qemu的虚拟机
META_DESCRIPTION.en:=Virtual machine by Qemu 
META_AUTHOR:=virtualdog
META_ARCH:=x86_64 aarch64
META_TAGS:=tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/virtualdog
META_WEBSITE:=https://github.com/Carseason/openwrt-app-actions
META_UCI:=virtualdog

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
