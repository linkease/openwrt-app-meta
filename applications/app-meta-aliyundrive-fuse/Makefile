# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.1.7
PKG_RELEASE:=1
META_TITLE:=阿里云盘Fuse
META_DEPENDS:=+aliyundrive-fuse +luci-i18n-aliyundrive-fuse-zh-cn +luci-app-aliyundrive-fuse
META_DESCRIPTION:=阿里云盘Fuse磁盘挂载，用于配合Emby或者Jellyfin观看阿里云盘内容，目前只读，不支持写入。
META_AUTHOR:=messense
META_ARCH:=x86_64 aarch64_cortex-a53
META_TAGS:=network tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/aliyundrive-fuse
META_WEBSITE:=https://github.com/messense/aliyundrive-fuse

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
