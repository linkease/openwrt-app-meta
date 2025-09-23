# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.3.7
PKG_RELEASE:=1
META_TITLE:=KSpeeder(原iStore增强)
META_TITLE.en:=KSpeeder(iStoreEnhance)
META_DEPENDS:=+istoreenhance +luci-app-istoreenhance +luci-i18n-istoreenhance-zh-cn
META_DESCRIPTION:=KSpeeder增强插件可以有效的解决Docker等网络问题，让 iStore 更好用。
META_DESCRIPTION.en:=KSpeeder is a tool to fix network issues for iStore.
META_AUTHOR:=xiaobao
META_ARCH:=x86_64 aarch64
META_TAGS:=nas service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/istoreenhance
META_WEBSITE:=https://kspeeder.com/
META_TUTORIAL:=https://kspeeder.com/guide/getting-started.html
META_AUTOCONF:=path enable
META_UCI:=istoreenhance

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
