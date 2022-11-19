# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=Nut
META_TITLE.en:=Nut
META_DEPENDS:=+luci-app-nut +luci-i18n-nut-zh-cn +nut +nut-server +nut-upsc +nut-upscmd +nut-upslog +nut-upsmon +nut-upsrw +nut-upssched +nut-web-cgi +nut-driver-usbhid-ups +nut-driver-dummy-ups +collectd-mod-nut
META_DESCRIPTION:=网络UPS工具配置。
META_DESCRIPTION.en:=Network UPS Tools Configuration.
META_AUTHOR:=nut
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/nut
META_WEBSITE:=
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
