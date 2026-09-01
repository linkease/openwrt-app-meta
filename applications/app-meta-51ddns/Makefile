# This is free software, licensed under the Apache License, Version 2.0.

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.6.3
PKG_RELEASE:=1
META_TITLE:=51DDNS 远程控制
META_TITLE.en:=51DDNS Remote Access
META_DEPENDS:=+51ddns-agent +luci-app-51ddns
META_DESCRIPTION:=51DDNS 内网穿透与远程控制，可通过统一账户令牌接入路由器，支持网页穿透、SSH、远程桌面、文件管理和动态 DNS。
META_DESCRIPTION.en:=Secure remote access for OpenWrt with web tunneling, SSH, remote desktop, file management and dynamic DNS.
META_AUTHOR:=INTELLIGENT CLOUD LIMITED (智能雲有限公司)
META_ARCH:=x86_64 aarch64
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/51ddns
META_WEBSITE:=https://www.51ddns.com/
META_TUTORIAL:=https://github.com/21hkcloud/51ddns-openwrt\#readme

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
