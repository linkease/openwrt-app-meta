# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.7
PKG_RELEASE:=20250516
META_TITLE:=网心云 - 容器魔方
META_DEPENDS:=+luci-app-wxedge +luci-i18n-wxedge-zh-cn +docker-deps
META_DESCRIPTION:=快来使用「网心云-容器魔方」，在线共享宽带即可赚点零花钱，每月可获得 30~200 左右的收益！现在上机最高享【80% 加成奖励+现金红包】 
META_AUTHOR:=网心云
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/wxedge
META_WEBSITE:=https://www.onethingcloud.com/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/wxedge.html
META_AUTOCONF:=path enable
META_UCI:=wxedge

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
