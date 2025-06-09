# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=Arcadia一站式代码运维平台
META_TITLE.en:=Arcadia one-stop code operation and maintenance platform
META_DEPENDS:=+luci-app-arcadia +luci-i18n-arcadia-zh-cn +docker-deps
META_DESCRIPTION:=脚本语言编程与运维，支持定时任务调度。
META_DESCRIPTION.en:=Script language programming and operation. Supporting scheduled task scheduling.
META_AUTHOR:=SuperManito
META_ARCH:=x86_64 aarch64
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/arcadia
META_WEBSITE:=https://arcadia.cool

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
