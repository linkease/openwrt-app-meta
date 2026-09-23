# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.0.1
PKG_RELEASE:=20260924

META_TITLE:=Cloudreve 私有云盘
META_TITLE.en:=Cloudreve Private Cloud Storage
META_DEPENDS:=+luci-app-cloudreve +luci-i18n-cloudreve-zh-cn
META_DESCRIPTION:=支持多家存储驱动的自建网盘系统，Web 界面管理文件、分享、WebDAV。
META_DESCRIPTION.en:=Self-hosted cloud storage with multi-driver support, Web UI for file/share/WebDAV management.
META_AUTHOR:=wanvfx
META_ARCH:=x86_64 aarch64 arm
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/nas/cloudreve
META_WEBSITE:=https://github.com/cloudreve/cloudreve
META_TUTORIAL:=
META_AUTOCONF:=path enable
META_UCI:=cloudreve

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
