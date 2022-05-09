# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=20210426
PKG_RELEASE:=1
META_TITLE:=SFTP服务
META_DEPENDS:=+openssh-sftp-server
META_DESCRIPTION:=SFTP服务配置
META_AUTHOR:=OpenBSD Project
META_TAGS:=network tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/system/admin/dropbear
META_WEBSITE:=https://www.openssh.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
