# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=3.15.3
PKG_RELEASE:=1
META_TITLE:=rtp2httpd
META_DEPENDS:=+rtp2httpd +luci-app-rtp2httpd +luci-i18n-rtp2httpd-zh-cn
META_DESCRIPTION:=面向 IPTV 场景的组播、RTSP、HTTP 流媒体转发服务，内置状态页面和 Web 播放器。可替代 udpxy 和 msd_lite。
META_DESCRIPTION.en:=IPTV-focused multicast, RTSP, and HTTP stream forwarding service. Alternative to udpxy and msd_lite.
META_AUTHOR:=stackia
META_TAGS:=net service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/rtp2httpd
META_WEBSITE:=https://github.com/stackia/rtp2httpd

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
