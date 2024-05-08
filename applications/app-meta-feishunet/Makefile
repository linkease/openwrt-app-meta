# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=2.2
PKG_RELEASE:=1
META_TITLE:=飞鼠p2p组网
META_TITLE.en:=feishunet
META_DEPENDS:=+luci-app-feishuvpn +luci-i18n-feishuvpn-zh-cn +docker-deps
META_DESCRIPTION:=用于nat打洞,可以直接建立两端无公网端点的直连隧道
META_DESCRIPTION.en:=Used for NAT drilling, it can directly establish a direct tunnel with no public network endpoints at both ends
META_AUTHOR:=xingkongwangbin
META_ARCH:=x86_64 aarch64_cortex-a53
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/feishuvpn
META_WEBSITE:=https://www.feishunet.com/
META_TUTORIAL:=https://www.feishuwg.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
