# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=2
META_TITLE:=frps
META_DEPENDS:=+frps +luci-i18n-frps-zh-cn +luci-app-frps
META_DESCRIPTION:=frp是一个专注于内网穿透的高性能的反向代理应用，支持 TCP、UDP、HTTP、HTTPS 等多种协议。可以将内网服务以安全、便捷的方式通过具有公网IP节点的中转暴露到公网。
META_AUTHOR:=fatedier
META_TAGS:=networking tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/frps
META_WEBSITE:=https://github.com/fatedier/frp

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
