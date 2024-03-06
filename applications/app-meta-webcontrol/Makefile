# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.2
PKG_RELEASE:=20240119
META_TITLE:=简单网络管控
META_TITLE.en:=Web Control
META_DEPENDS:=+luci-app-timecontrol +luci-app-control-weburl +luci-app-control-webrestriction
META_DEPENDS+= +luci-i18n-timecontrol-zh-cn +luci-i18n-control-weburl-zh-cn +luci-i18n-control-webrestriction-zh-cn
META_DESCRIPTION:=简单的网络管控工具集，限制上网时间，限制访问网站等
META_DESCRIPTION.en:=Tools for basic web control
META_AUTHOR:=Lienol <lawlienol@gmail.com>
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/control
META_WEBSITE:=https://github.com/Lienol/openwrt-package/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
