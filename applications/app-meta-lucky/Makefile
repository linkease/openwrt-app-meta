# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=2.19.5
PKG_RELEASE:=1
META_TITLE:=Lucky
META_TITLE.en:=Lucky
META_DEPENDS:=+luci-app-lucky +luci-i18n-lucky-zh-cn +lucky
META_DESCRIPTION:=动态域名ddns-go服务，替代socat主要用于公网IPv6 tcp/udp转内网ipv4，http/https反向代理。（若升级失败请卸载重装）
META_DESCRIPTION.en:=Dynamic domain name ddns-go service, instead of socat, is mainly used for public network IPv6 tcp/udp to intranet ipv4, http/https reverse proxy.
META_AUTHOR:=古大羊(gdy666)
META_ARCH:=x86_64 aarch64
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/lucky
META_WEBSITE:=https://lucky666.cn/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
