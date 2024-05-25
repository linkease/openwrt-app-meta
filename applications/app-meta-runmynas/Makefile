# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.1
PKG_RELEASE:=20240524
META_TITLE:=RunMyNAS自定义固件
META_TITLE.en:=RunMyNAS
META_DEPENDS:=+luci-app-runmynas +luci-i18n-runmynas-zh-cn +docker-deps
META_DESCRIPTION:=RunMyNAS可以让你根据自己的需要，自定义自己的 iStoreOS 系统。
META_DESCRIPTION.en:=runmynas can define your own istoreos system.
META_AUTHOR:=runmynas/xiaobao
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/runmynas/pages/
META_WEBSITE:=https://github.com/linkease/iStoreNAS

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
