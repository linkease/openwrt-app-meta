# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.3
PKG_RELEASE:=20240523
META_TITLE:=迅雷下载
META_TITLE.en:=Xunlei
META_DEPENDS:=+luci-app-xunlei +luci-i18n-xunlei-zh-cn +docker-deps
META_DESCRIPTION:=迅雷是一个常用的下载工具。本插件可部署 cnk3x 封装的 Docker 版迅雷。
META_DESCRIPTION.en:=Xunlei is a common download tool. The Docker image is provided by cnk3x.
META_AUTHOR:=xunlei/cnk3x
META_TAGS:=download tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/xunlei
META_WEBSITE:=https://www.xunlei.com/
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
