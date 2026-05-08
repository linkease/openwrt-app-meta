# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2026 chenyu

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.24
PKG_RELEASE:=1

META_TITLE:=eMMC 寿命检测
META_TITLE.en:=eMMC Health
META_DEPENDS:=+luci-app-emmc-health
META_DESCRIPTION:=图形化查看 eMMC EXT_CSD 寿命估算、Pre EOL 状态和原始 mmc-utils 输出。
META_DESCRIPTION.en:=A LuCI app for monitoring eMMC EXT_CSD life time estimation, Pre EOL status and raw mmc-utils output.
META_AUTHOR:=陈雨
META_TAGS:=system tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/emmc-health
META_WEBSITE:=https://github.com/adminchenyu/eMMC-Health

include ../../meta.mk
# call BuildPackage - OpenWrt buildroot signature
