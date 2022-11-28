# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=3.5.1
PKG_RELEASE:=1
META_TITLE:=alist网盘
META_TITLE.en:=Alist Net disk
META_DEPENDS:=+luci-i18n-alist-zh-cn +alist +luci-app-alist
META_DESCRIPTION:=一个支持多存储的文件列表程序。v3版本配置和之前v2版本配置不兼容。
META_DESCRIPTION.en:=A file list program that supports multiple storage.
META_AUTHOR:=alist-org
META_ARCH:=x86_64 aarch64_cortex-a53
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/nas/alist
META_WEBSITE:=https://github.com/alist-org/alist

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
