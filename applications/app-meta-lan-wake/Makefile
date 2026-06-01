# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2026 陈雨
#
# This is free software, licensed under the GNU General Public License v3.0.

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.0
PKG_RELEASE:=1

META_TITLE:=局域网设备唤醒
META_TITLE.en:=Wake-on-LAN
META_DEPENDS:=+luci-app-lan-wake +luci-js-deps
META_DESCRIPTION:=用于图形化管理局域网Wake-on-LAN设备，支持设备卡片、在线检测、状态展示、远程唤醒和拖动排序。
META_DESCRIPTION.en:=A LuCI app for managing LAN Wake-on-LAN devices with device cards, online detection, status display, wake actions and drag-and-drop sorting.
META_AUTHOR:=陈雨
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/lan-wake
META_WEBSITE:=https://github.com/adminchenyu/LAN-Wake

include ../../meta.mk
# call BuildPackage - OpenWrt buildroot signature
