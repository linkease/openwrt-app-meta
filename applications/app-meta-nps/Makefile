# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1
PKG_RELEASE:=5
META_TITLE:=nps
META_DEPENDS:=+luci-i18n-nps-zh-cn +luci-app-nps +nps +wget +npc
META_DESCRIPTION:=快速反向代理，可帮助您将 NAT 或防火墙后面的本地服务器公开到 Internet。
META_DESCRIPTION.en:=A fast reverse proxy that helps you expose your local server behind a NAT or firewall to the Internet.
META_AUTHOR:=ehang-io
META_TAGS:=networking tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/nps
META_WEBSITE:=https://github.com/ehang-io/nps

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
