# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=4.5.3
PKG_RELEASE:=1
META_TITLE:=MosDNS
META_TITLE.en:=MosDNS
META_DEPENDS:=+luci-app-mosdns +luci-i18n-mosdns-zh-cn +mosdns
META_DESCRIPTION:=MosDNS是一个插件化的DNS转发/分流器。
META_DESCRIPTION.en:=MosDNS is a plug-in DNS forwarder. Users can splicing plug-ins as needed to customize their own DNS processing logic.
META_AUTHOR:=sbwml
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/mosdns
META_WEBSITE:=https://github.com/sbwml/luci-app-mosdns

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
