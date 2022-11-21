# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=20221118
META_TITLE:=Vaultwarden私人密码箱
META_TITLE.en:=Vaultwarden
META_DEPENDS:=+luci-app-vaultwarden +luci-i18n-vaultwarden-zh-cn +docker-deps
META_DESCRIPTION:=Vaultwarden是Rust开发的Bitwarden服务器(私人密码箱)，包括Web Vault。
META_DESCRIPTION.en:=Alternative implementation of the Bitwarden server API in Rust, including the Web Vault. 
META_AUTHOR:=Vaultwarden
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/vaultwarden
META_WEBSITE:=https://hub.docker.com/r/vaultwarden/server
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
