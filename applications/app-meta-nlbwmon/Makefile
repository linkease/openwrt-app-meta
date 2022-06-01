# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=2
META_TITLE:=主机流量监控
META_DEPENDS:=+nlbwmon +luci-i18n-nlbwmon-zh-cn +luci-app-nlbwmon
META_DESCRIPTION:=对局域网的主机流量进行监控。
META_AUTHOR:=jow
META_TAGS:=net monitor
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/nlbw
META_WEBSITE:=https://github.com/jow-/nlbwmon

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
