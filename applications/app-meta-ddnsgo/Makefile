# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=4.2.1
PKG_RELEASE:=2
META_TITLE:=DDNS-GO
META_TITLE.en:=DDNS-GO
META_DEPENDS:=+luci-app-ddns-go +luci-i18n-ddns-go-zh-cn +ddnsgo
META_DESCRIPTION:=DDNS-GO自动获得你的公网IPv4或IPv6地址，并解析到对应的域名服务。
META_DESCRIPTION.en:=DDNS-GO automatically obtains your public network IPv4 or IPv6 address, and resolves to the corresponding domain name service.
META_AUTHOR:=sirpdboy/jeessy2
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/ddnsgo
META_WEBSITE:=https://github.com/sirpdboy/luci-app-ddns-go

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
