# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.2.5
PKG_RELEASE:=1
META_TITLE:=阿里云盘WebDAV
META_DEPENDS:=+aliyundrive-webdav +luci-i18n-aliyundrive-webdav-zh-cn +luci-app-aliyundrive-webdav
META_DESCRIPTION:=阿里云盘WebDAV服务，主要使用场景为配合支持WebDAV协议的客户端实现直接观看云盘视频内容，支持上传文件，但受限于WebDAV协议不支持文件秒传。
META_AUTHOR:=messense
META_ARCH:=x86_64 aarch64_cortex-a53
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/aliyundrive-webdav
META_WEBSITE:=https://github.com/messense/aliyundrive-webdav
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/advanced.html\#阿里云webdav

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
