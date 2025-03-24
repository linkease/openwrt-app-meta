# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.4
PKG_RELEASE:=20250321
META_TITLE:=Home Assistant
META_DEPENDS:=+luci-app-homeassistant +luci-i18n-homeassistant-zh-cn +docker-deps
META_DESCRIPTION:=开源智能家居系统，将本地控制和隐私放在首位。
META_DESCRIPTION.en:=Open source home automation that puts local control and privacy first.
META_AUTHOR:=Home Assistant
META_TAGS:=net service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/homeassistant
META_WEBSITE:=https://www.home-assistant.io/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/homeassistant.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
