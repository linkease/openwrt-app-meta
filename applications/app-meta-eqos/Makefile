# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=IP限速
META_DEPENDS:=+luci-app-eqos +luci-i18n-eqos-zh-cn +luci-base +tc +kmod-sched-core +kmod-ifb
META_DESCRIPTION:=简单的IP限速控制服务
META_AUTHOR:=Jianhui Zhao
META_ARCH:=x86_64 aarch64_generic aarch64_cortex-a53
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/network/eqos
META_WEBSITE:=https://github.com/neheb

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
