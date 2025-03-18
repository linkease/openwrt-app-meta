# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=646-1
PKG_RELEASE:=20250314
META_TITLE:=梨享雾计算OpenFog
META_DEPENDS:=+fogvdn +luci-app-fogvdn +luci-i18n-fogvdn-zh-cn
META_DESCRIPTION:=梨享雾计算（OpenFog）依托于梨享计算自研的雾计算技术，将用户贡献的带宽量和存储空间再服务于国内头部的视频厂商，用户通过OpenFogOS平台贡献他们的上行带宽和设备存储空间以获得现金收益。简单来说，大家只要共享带宽的上行和存储空间，就可以获得现金收益
META_AUTHOR:=梨享
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/openfog
META_WEBSITE:=https://openfogos.com/
META_TUTORIAL:=https://openfogos.com/home/doc/istoreos_tutorial
META_AUTOCONF:=enable
META_UCI:=fogvdn

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
