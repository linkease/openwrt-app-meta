# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.8.7
PKG_RELEASE:=1
META_TITLE:=易有云
META_TITLE.en:=LinkEase
META_DEPENDS:=+linkease +luci-app-linkease +luci-i18n-linkease-zh-cn
META_DESCRIPTION:=易有云是一个微型家庭数据服务中心，主要用于文件的集中存放、读取、备份及日常管理。释放用户终端设备空间，实现个人、家庭文件长久留存；支持家庭相册、视频文件随时随地多终端查看、播放，满足家庭文件的日常管理。
META_DESCRIPTION.en:=LinkEase is a private cloud storage with its own remote connection to access personal files anytime, anywhere
META_AUTHOR:=xiaobao
META_ARCH:=x86_64 aarch64_cortex-a53
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/linkease
META_WEBSITE:=https://www.linkease.com/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
