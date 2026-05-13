# This is free software, licensed under the Apache License, Version 2.0.

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.3
PKG_RELEASE:=1

META_TITLE:=eMMC健康检测
META_TITLE.en:=eMMC Health
META_DEPENDS:=+luci-app-emmc-health +luci-js-deps
META_DESCRIPTION:=eMMC 健康检测工具，用于图形化查看 eMMC 品牌、型号、容量、寿命估算、Pre EOL 状态。
META_DESCRIPTION.en:=A LuCI app for monitoring eMMC health, including brand, model, capacity, life time estimation and Pre EOL status.
META_AUTHOR:=陈雨
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/emmc-health
META_WEBSITE:=https://github.com/adminchenyu/eMMC-Health

include ../../meta.mk
# call BuildPackage - OpenWrt buildroot signature
