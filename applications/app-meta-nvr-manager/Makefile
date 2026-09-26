# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.1
PKG_RELEASE:=1

META_TITLE:=NVR视频监控
META_TITLE.en:=NVR Surveillance
META_DEPENDS:=+luci-app-nvr-manager
META_DESCRIPTION:=高性能网络视频监控录像系统，支持摄像头跨网段直通录像、低延迟多画面预览与局域网NAS存储。
META_DESCRIPTION.en:=High-performance Network Video Recorder (NVR) surveillance system with multi-camera live view, direct streaming recording and NAS integration.
META_AUTHOR:=Gilbert Liu
META_TAGS:=multimedia tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/nvr-manager
META_WEBSITE:=https://github.com/liuyuhao1023/luci-app-istore-nvr
META_AUTOCONF:=enable
META_UCI:=nvr-manager

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
