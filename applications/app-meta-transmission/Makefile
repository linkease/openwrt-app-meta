# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=Transmission
META_DEPENDS:=+transmission-daemon-openssl +transmission-web-control +luci-app-transmission +luci-i18n-transmission-zh-cn
META_DESCRIPTION:=专业磁力种子下载工具。
META_AUTHOR:=The Transmission project 
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/nas/transmission
META_WEBSITE:=https://transmissionbt.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
