# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.4.4
PKG_RELEASE:=20240513
META_TITLE:=移动通信模组
META_TITLE.en:=Modem
META_DEPENDS:=+luci-app-modem +luci-i18n-modem-zh-cn +quectel-CM-5G +sms-tool
META_DESCRIPTION:=Modem 支持USB和PCIE两种通信方式接入的模块，支持多模块的信息查看和控制。
META_DESCRIPTION.en:=Modem supports modems connected via USB and PCIE communication methods, and supports information viewing and control of multiple modems.
META_AUTHOR:=Siriling <siriling@qq.com>
META_ARCH:=x86_64 aarch64_generic aarch64_cortex-a53
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/network/modem
META_WEBSITE:=https://github.com/Siriling/5G-Modem-Support/tree/main/luci-app-modem
META_TUTORIAL:=https://blog.siriling.com:1212/2023/03/18/openwrt-5g-modem

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
