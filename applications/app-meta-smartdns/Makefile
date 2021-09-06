# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=smartdns
META_DEPENDS:=+smartdns +luci-i18n-smartdns-zh-cn +luci-app-smartdns
META_DESCRIPTION:=SmartDNS是一个运行在本地的DNS服务器，SmartDNS接受本地客户端的DNS查询请求，从多个上游DNS服务器获取DNS查询结果，并将访问速度最快的结果返回给客户端，提高网络访问速度。 同时支持指定特定域名IP地址，并高性匹配，达到过滤广告的效果。
META_AUTHOR:=Nick Peng
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/smartdns
META_WEBSITE:=https://github.com/pymumu/smartdns

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
