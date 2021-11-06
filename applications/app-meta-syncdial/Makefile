# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=多线多拨
META_DEPENDS:=+kmod-macvlan +luci-app-mwan3 +mwan3 +libuci-lua +luci-mod-admin-full +luci-app-firewall +luci-lib-nixio
META_DESCRIPTION:=利用macvlan驱动创建多个虚拟WAN口，支持并发多拨，支持IPv6。
META_AUTHOR:=rufengsuixing
META_ARCH:=x86_64 aarch64_cortex-a53
META_TAGS:=network tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/network/syncdial
META_WEBSITE:=https://github.com/rufengsuixing/luci-app-syncdial

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
