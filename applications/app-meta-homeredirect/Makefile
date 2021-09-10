# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=HomeRedirect端口转发
META_DEPENDS:=+HomeRedirect +luci-app-homeredirect +luci-i18n-homeredirect-zh-cn
META_DESCRIPTION:=端口转发工具，可以将路由上端口访问转发至任意位置，支持TCP/UDP协议，IPv4和IPv6。
META_AUTHOR:=Eric Yu
META_ARCH:=x86_64 aarch64_generic aarch64_cortex-a53
META_TAGS:=services tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/homeredirect
META_WEBSITE:=https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
