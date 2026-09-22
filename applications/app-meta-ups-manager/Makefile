# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1

META_TITLE:=UPS电源管理
META_TITLE.en:=UPS Manager
META_DEPENDS:=+luci-app-ups-manager
META_DESCRIPTION:=现代化企业级 UPS 电源管理系统，提供设备自动发现、市电质量监测、停电告警与自动关机保护。
META_DESCRIPTION.en:=Modern Enterprise UPS Power Management System, with auto-detection, telemetry, outage alerts and shutdown protection.
META_AUTHOR:=Gilbert Liu
META_TAGS:=system power tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/ups_manager
META_WEBSITE:=https://github.com/liuyuhao1023/luci-app-ups-manager
META_UCI:=ups_manager

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
