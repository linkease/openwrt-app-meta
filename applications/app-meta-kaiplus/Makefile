# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.5
PKG_RELEASE:=1
META_TITLE:=KaiPlus
META_TITLE.en:=KaiPlus
META_DEPENDS:=+luci-app-kaiplus +kaiplus
META_DESCRIPTION:=KaiPlus AI 工作台(iStoreOS 24版本以上适用)
META_DESCRIPTION.en:=KaiPlus AI workspace
META_AUTHOR:=koolcenter
META_ARCH:=x86_64 aarch64
META_TAGS:=system ai
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/kaiplus
META_WEBSITE:=https://ai.koolcenter.com
META_AUTOCONF:=path enable
META_UCI:=kaiplus

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
