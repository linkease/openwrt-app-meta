# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=3.10.1
PKG_RELEASE:=1
META_TITLE:=rtp2httpd
META_DEPENDS:=+rtp2httpd +luci-app-rtp2httpd +luci-i18n-rtp2httpd-zh-cn
META_DESCRIPTION:=将组播 RTP/RTSP 流转换为单播 HTTP 流，实现任意播放器观看 IPTV 直播和回看，提供快速换台支持和内置 Web 播放器。可替代 udpxy 和 msd_lite。
META_DESCRIPTION.en:=Multicast RTP/RTSP to Unicast HTTP stream converter, optimized for China IPTV. Alternative to udpxy and msd_lite.
META_AUTHOR:=stackia
META_TAGS:=net service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/rtp2httpd
META_WEBSITE:=https://github.com/stackia/rtp2httpd

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
