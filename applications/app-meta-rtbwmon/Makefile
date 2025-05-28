# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.0
PKG_RELEASE:=1
META_TITLE:=实时流量
META_TITLE.en:=Realtime Bandwidth
META_DEPENDS:=+luci-app-rtbwmon +luci-i18n-rtbwmon-zh-cn
META_DESCRIPTION:=实时查看客户端网速，无后台服务
META_DESCRIPTION.en:=Display the network speed of the clients, no background service
META_AUTHOR:=jjm2473
META_TAGS:=net monitor
META_LUCI_ENTRY:=/cgi-bin/luci/admin/status/rtbwmon
META_WEBSITE:=https://github.com/linkease/openwrt-app-actions/tree/main/applications/luci-app-rtbwmon

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
