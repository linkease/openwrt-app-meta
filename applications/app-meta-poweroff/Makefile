# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=关机
META_DEPENDS:=+luci-i18n-poweroff-zh-cn +luci-app-poweroff
META_DESCRIPTION:=简单的关机
META_AUTHOR:=eSir Playground
META_ARCH:=x86_64 aarch64_generic aarch64_cortex-a53
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/system/poweroff
META_WEBSITE:=https://github.com/esirplayground/luci-app-poweroff

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
