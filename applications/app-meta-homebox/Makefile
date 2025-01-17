# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=2
META_TITLE:=Homebox内网测速
META_DEPENDS:=+homebox +luci-app-homebox +luci-i18n-homebox-zh-cn
META_DESCRIPTION:=Homebox是一款局域网测速工具
META_AUTHOR:=Bradley Xu
META_ARCH:=x86_64 aarch64
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/homebox
META_WEBSITE:=https://github.com/XGHeaven/homebox
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/homebox.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
