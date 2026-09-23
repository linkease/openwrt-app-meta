# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.2
PKG_RELEASE:=5
META_TITLE:=酷友社KAI
META_TITLE.en:=kai
META_DEPENDS:=+luci-app-kai +kai +kai_session +kai-agent
META_DESCRIPTION:==酷友社KAI 解决各种问题，加速软件安装
META_DESCRIPTION.en:=Koolceneter Kai AI solve various network issues and speed up software installation.
META_AUTHOR:=koolcenter
META_ARCH:=x86_64 aarch64
META_TAGS:=system ai
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/kai
META_WEBSITE:=https://ai.koolcenter.com
META_AUTOCONF:=path enable
META_UCI:=kai

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
