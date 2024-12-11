# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.6
PKG_RELEASE:=1
META_TITLE:=iStore分身(iStoreDup)
META_DEPENDS:=+vmease +luci-app-istoredup +luci-i18n-istoredup-zh-cn +docker-deps
META_DESCRIPTION:=iStoreOS 的分身，可以把风险高的软件安装到分身里面，出问题不影响到主系统。
META_DESCRIPTION.en:=A duplica of iStoreOS.
META_AUTHOR:=xiaobao
META_TAGS:=system
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/istoredup
META_WEBSITE:=https://www.istoreos.com
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istoreos/software/istoredup.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
