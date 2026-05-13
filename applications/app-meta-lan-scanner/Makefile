# This is free software, licensed under the Apache License, Version 2.0.

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.0
PKG_RELEASE:=1

META_TITLE:=局域网设备扫描
META_TITLE.en:=LAN Device Scanner
META_DEPENDS:=+luci-app-lan-scanner
META_DESCRIPTION:=用于按CIDR网段扫描局域网内的在线、未响应和离线设备，支持扫描进度显示、MAC地址识别、历史设备状态区分和结果筛选。
META_DESCRIPTION.en:=A LuCI app for scanning online, unresponsive, and offline devices within a local network by CIDR subnet, with scan progress, MAC address detection, device history status and result filtering.
META_AUTHOR:=陈雨
META_TAGS:=network tool system
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/lan-scanner
META_WEBSITE:=https://github.com/adminchenyu/LAN-Scanner

include ../../meta.mk
# call BuildPackage - OpenWrt buildroot signature
