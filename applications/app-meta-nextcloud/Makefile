# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.0
PKG_RELEASE:=20221114
META_TITLE:=nextcloud
META_DEPENDS:=+luci-app-nextcloud +luci-i18n-nextcloud-zh-cn +docker-deps
META_DESCRIPTION:=数据的安全之家。根据您的设置，从任何设备访问和共享您的文件、日历、联系人、邮件等
META_DESCRIPTION.en:=Nextcloud puts your data at your fingertips, under your control. Store your documents, calendar, contacts and photos on a server at home, at one of our providers or in a data center you trust.
META_AUTHOR:=nextcloud
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/nextcloud
META_WEBSITE:=https://nextcloud.com/
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/advanced.html\#nextcloud

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
