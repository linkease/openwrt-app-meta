# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.2.0
PKG_RELEASE:=20250627
META_TITLE:=容器魔王
META_DEPENDS:=+luci-app-demon +luci-i18n-demon-zh-cn +docker-deps
META_DESCRIPTION:=【魔王现世】为 iStoreOS 特制，收益更高。每月至高可赚「千元」，现在上线秒领「30天20%收益加成」，挂机托管自动赚米，拿到手软！替代网心云的「容器魔方」。
META_AUTHOR:=网心云
META_ARCH:=x86_64
META_TAGS:=net
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/demon
META_WEBSITE:=https://www.onethingcloud.com/
META_TUTORIAL:=https://help.onethingcloud.com/caa9/a0fe/48b5
META_AUTOCONF:=path enable
META_UCI:=demon

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
