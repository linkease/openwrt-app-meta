# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=2.2
PKG_RELEASE:=2
META_TITLE:=飞鼠p2p组网
META_TITLE.en:=feishunet
META_DEPENDS:=+luci-app-feishuvpn +luci-i18n-feishuvpn-zh-cn +docker-deps
META_DESCRIPTION:=飞鼠P2P组网工具，通过NAT穿透技术实现两端无公网IP设备之间的直接通信
META_DESCRIPTION.en:=Feishu P2P Networking - Enables direct communication between devices without public IPs using NAT traversal technology
META_AUTHOR:=xingkongwangbin
META_ARCH:=x86_64 aarch64
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/feishuvpn
META_WEBSITE:=https://www.feishunet.com/
META_TUTORIAL:=https://www.feishunet.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
