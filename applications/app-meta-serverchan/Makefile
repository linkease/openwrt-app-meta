# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=2.01.3
PKG_RELEASE:=9
META_TITLE:=微信推送ServerChan
META_DEPENDS:=+iputils-arping +curl +jq +luci-app-serverchan
META_DESCRIPTION:=用于OpenWRT/LEDE路由器上进行微信/Telegram推送的插件
META_AUTHOR:=tty228 <tty228@yeah.net>
META_TAGS:=services tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/serverchan
META_WEBSITE:=https://github.com/tty228/luci-app-serverchan

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
