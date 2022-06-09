# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=20200824
PKG_RELEASE:=5
META_TITLE:=Socat端口转发
META_TITLE.en:=Socat Forwarder
META_DEPENDS:=+luci-app-socat +luci-i18n-socat-zh-cn
META_DESCRIPTION:=Socat 是 Linux 下的一个多功能的网络工具，名字来由是「Socket CAT」。此插件基于 Socat 实现跨协议端口转发
META_DESCRIPTION.en:=Cross protocol port forwarding based on socat.
META_AUTHOR:=Lienol <lawlienol@gmail.com>
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/network/socat
META_WEBSITE:=https://github.com/Lienol/openwrt-package/tree/main/luci-app-socat

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
