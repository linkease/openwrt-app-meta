# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.3.1
PKG_RELEASE:=1
META_TITLE:=CUPS打印服务
META_TITLE.en:=CUPS
META_DEPENDS:=+luci-app-cupsd +cups +libcups +libcupsmime +libcupscgi +libcupsppdc
META_DESCRIPTION:=CUPS是苹果公司为MacOS和其他类似UNIX的操作系统开发的基于标准的开源打印系统。
META_DESCRIPTION.en:=CUPS is an open-source, standards-based printing system developed by Apple for MacOS and other UNIX-like operating systems.
META_AUTHOR:=OpenPrinting
META_TAGS:=tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/cupsd
META_WEBSITE:=https://github.com/OpenPrinting/cups
META_TUTORIAL:=

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
