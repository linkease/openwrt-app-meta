# This is not free software, not licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.4
PKG_RELEASE:=2
META_TITLE:=旺财狗
META_TITLE.en:=rebatedog
META_DEPENDS:=+luci-app-rebatedog +luci-i18n-rebatedog-zh-cn +docker-deps
META_DESCRIPTION:=一款跨平台的淘客发单系统
META_DESCRIPTION.en:=A multi platform system for TaoKe.
META_AUTHOR:=泡泡
META_ARCH:=x86_64 aarch64
META_TAGS:=system nas
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/rebatedog
META_WEBSITE:=https://github.com/zhaoyangguang/rebatedog

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
