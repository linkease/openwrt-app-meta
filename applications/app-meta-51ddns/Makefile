# This is free software, licensed under the Apache License, Version 2.0.

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.6.4
PKG_RELEASE:=2
META_TITLE:=51DDNS 远程控制
META_TITLE.en:=51DDNS Remote Access
META_DEPENDS:=+51ddns-agent +luci-app-51ddns
META_DESCRIPTION:=51DDNS 内网穿透与远程控制。OpenWrt 24.10 安装前须按教程配置 51DDNS 签名软件源，以提供兼容的 frpc（至少 0.52.0）；25.12 可直接安装。支持网页穿透、SSH、远程桌面、文件管理和动态 DNS。
META_DESCRIPTION.en:=51DDNS remote access for OpenWrt. On 24.10, first configure the signed 51DDNS feed as described in the tutorial to provide frpc 0.52.0 or later; 25.12 can install directly. Supports web tunneling, SSH, remote desktop, file management and dynamic DNS.
META_AUTHOR:=INTELLIGENT CLOUD LIMITED (智能雲有限公司)
META_ARCH:=x86_64 aarch64
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/51ddns
META_WEBSITE:=https://www.51ddns.com/
META_TUTORIAL:=https://github.com/21hkcloud/51ddns-openwrt/blob/main/docs/openwrt.md\#openwrt-2410-and-istore

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
