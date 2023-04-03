# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.1
PKG_RELEASE:=20230403
META_TITLE:=访问AP/光猫
META_TITLE.en:=Access AP / Modem
META_DEPENDS:=+luci-app-ap-modem +luci-i18n-ap-modem-zh-cn
META_DESCRIPTION:=让局域网客户端访问不同子网的AP或光猫（只支持 OpenWRT 21 以上）
META_DESCRIPTION.en:=Allows clients in the local network to access AP or modem on different subnet. (Only OpenWRT 21+)
META_AUTHOR:=jjm2473
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/network/ap_modem
META_WEBSITE:=https://github.com/linkease/openwrt-app-actions/tree/main/applications/luci-app-ap-modem

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
