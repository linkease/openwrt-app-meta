# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.2.12
PKG_RELEASE:=1
META_TITLE:=DiskMan磁盘管理
META_TITLE.en:=DiskMan
META_DEPENDS:=+luci-app-diskman +luci-i18n-diskman-zh-cn
META_DESCRIPTION:=一个简单的磁盘管理 LuCI 插件，支持磁盘分区、格式化，支持 RAID / btrfs-raid / btrfs-快照管理
META_DESCRIPTION.en:=A Simple Disk Manager for LuCI, support disk partition and format, support raid / btrfs-raid / btrfs-snapshot
META_AUTHOR:=lisaac <lisaac.cn@gmail.com>
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/system/diskman
META_WEBSITE:=https://github.com/lisaac/luci-app-diskman

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
