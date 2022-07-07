# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1
PKG_RELEASE:=2
META_TITLE:=文件传输
META_TITLE.en:=filetransfer
META_DEPENDS:=+luci-lib-fs +luci-app-filetransfer +luci-i18n-filetransfer-zh-cn
META_DESCRIPTION:=用于IPK上传/安装的文件传输
META_DESCRIPTION.en:=LuCI page for IPK upload
META_AUTHOR:=LuCI Team
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/system/filetransfer
META_WEBSITE:=https://github.com/coolsnowwolf/luci/tree/master/applications/luci-app-filetransfer

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
