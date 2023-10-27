# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.0.4
PKG_RELEASE:=1
META_TITLE:=Tailscale
META_DEPENDS:=+tailscale +luci-app-tailscaler
META_DESCRIPTION:=基于 WireGuard 协议的简单易用虚拟局域网服务
META_DESCRIPTION.en:=A easy use VPN service based on WireGuard
META_AUTHOR:=Tailscale Inc.
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/tailscaler
META_WEBSITE:=https://tailscale.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
