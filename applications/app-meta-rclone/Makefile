# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.4.1
PKG_RELEASE:=1
META_TITLE:=RCLONE
META_DEPENDS:=+rclone-ng +rclone +rclone-webui-react +luci-app-rclone
META_DESCRIPTION:=Rclone是一个用于同步云平台文件和目录命令行的工具
META_AUTHOR:=ElonH
META_TAGS:=services tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/nas/rclone
META_WEBSITE:=https://github.com/ElonH/Rclone-OpenWrt

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
