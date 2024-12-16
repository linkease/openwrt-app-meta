# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.9
PKG_RELEASE:=20241216
META_TITLE:=Ubuntu
META_DEPENDS:=+luci-app-ubuntu2 +luci-i18n-ubuntu2-zh-cn +docker-deps
META_DESCRIPTION:=带Web远程桌面的Docker版Ubuntu，纯英文系统，欢迎各位极客玩家享用。 
META_AUTHOR:=xiaobao
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/ubuntu2
META_WEBSITE:=https://www.kasmweb.com
META_TUTORIAL:=https://doc.linkease.com/zh/guide/easepi/advanced.html\#ubuntu
META_AUTOCONF:=path enable

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
