# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=20250406
META_TITLE:=UptimeKuma
META_TITLE.en:=UptimeKuma
META_DEPENDS:=+luci-app-uptimekuma +luci-i18n-uptimekuma-zh-cn +docker-deps
META_DESCRIPTION:=Uptime Kuma 是一款易于使用的自托管监控工具。
META_DESCRIPTION.en:=Uptime Kuma is an easy-to-use self-hosted monitoring tool.
META_AUTHOR:=songquanpeng
META_TAGS:=net ai
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/uptimekuma
META_WEBSITE:=https://openai.justsong.cn
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/uptimekuma.html
META_AUTOCONF:=path enable
META_UCI:=uptimekuma

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
