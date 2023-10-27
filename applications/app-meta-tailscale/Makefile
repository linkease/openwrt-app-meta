# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.0.1
PKG_RELEASE:=1
META_TITLE:=Tailscale
META_DEPENDS:=+tailscale +luci-app-tailscaler
META_DESCRIPTION:=简单易用的内网穿透工具，能实现虚拟局域网的组建
META_DESCRIPTION.en:=A easy use VPN service
META_AUTHOR:=tailscale
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/tailscaler
META_WEBSITE:=https://tailscale.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
