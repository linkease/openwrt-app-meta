# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=beta
PKG_RELEASE:=1
META_TITLE:=Arcadia 一站式代码运维平台
META_TITLE.en:=Arcadia one-stop code operation and maintenance platform
META_DEPENDS:=+luci-app-arcadia +luci-i18n-arcadia-zh-cn +docker-deps
META_DESCRIPTION:=Arcadia 一站式代码运维平台主要面向于脚本语言编程，适用于中小型团队与个人的开发与运维环境。除了代码运维外 Arcadia 还是一个强大的定时任务运维平台，并且有着完善的文件系统和底层CLI命令设计。
META_DESCRIPTION.en:=Arcadia one-stop code operation and maintenance platform is mainly aimed at scripting language programming and is suitable for development and operation environments of small and medium-sized teams and individuals. In addition to code maintenance, Arcadia is also a powerful scheduled task maintenance platform with a comprehensive file system and underlying CLI command design.
META_AUTHOR:=SuperManito
META_ARCH:=x86_64 aarch64
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/arcadia
META_WEBSITE:=https://arcadia.cool

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
