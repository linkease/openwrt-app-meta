# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.05
PKG_RELEASE:=2
META_TITLE:=硬盘休眠
META_TITLE.en:=hd-idle
META_DEPENDS:=+hd-idle +luci-i18n-hd-idle-zh-cn +luci-app-hd-idle
META_DESCRIPTION:硬盘的空闲时间超过设定值以后自动休眠硬盘
META_DESCRIPTION.en:=hd-idle is a utility program for spinning-down disks after a period of idle time.
META_AUTHOR:=Lim Guo Wei <limguowei@gmail.com>
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/hd_idle
META_WEBSITE:=http://hd-idle.sourceforge.net/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
