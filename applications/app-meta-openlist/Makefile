# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=4.1.0
PKG_RELEASE:=1
META_TITLE:=OpenList网盘
META_TITLE.en:=OpenList Net disk
META_DEPENDS:=+luci-i18n-openlist-zh-cn +openlist +luci-app-openlist +luci-js-deps
META_DESCRIPTION:=一个支持多存储的文件列表程序，提供 WEB 界面和 WebDAV/FTP/SFTP 服务。AList 的直接替代品，具有长期治理、无隐藏风险和完全透明性，旨在保护开源免受基于信任的攻击。
META_DESCRIPTION.en:=A file list program that supports multiple storage.
META_AUTHOR:=Xhofe/OpenListTeam
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/openlist
META_WEBSITE:=https://github.com/OpenListTeam/OpenList
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/alist.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
