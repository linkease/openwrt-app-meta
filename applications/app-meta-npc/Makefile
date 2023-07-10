# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.26.10
PKG_RELEASE:=27
META_TITLE:=NPS内网穿透客户端
META_DEPENDS:=+npc +luci-app-npc +luci-i18n-npc-zh-cn
META_DESCRIPTION:=NPS客户端，Nps是一种快速反向代理，可帮助您将NAT或防火墙后面的本地服务器公开到Internet。
META_DESCRIPTION.en:=NPS client,Nps is a fast reverse proxy that helps you expose your local servers behind a NAT or firewall to the Internet.
META_AUTHOR:=ehang-io
META_TAGS:=networking tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/npc
META_WEBSITE:=https://github.com/ehang-io/nps

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
