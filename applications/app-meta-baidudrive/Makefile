# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=百度网盘
META_TITLE.en:=BaiduDrive
META_DEPENDS:=+luci-app-baidudrive +baidudrive
META_DESCRIPTION:=百度网盘 Web 管理工具
META_DESCRIPTION.en:=Baidu Netdisk Web UI
META_AUTHOR:=linkease
META_ARCH:=x86_64 aarch64
META_TAGS:=network storage
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/baidudrive
META_WEBSITE:=https://pan.baidu.com
META_AUTOCONF:=path enable
META_UCI:=baidudrive

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
