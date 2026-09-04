# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.0
PKG_RELEASE:=1
META_TITLE:=iStoreRouter
META_TITLE.en:=iStoreRouter
META_DEPENDS:=+luci-app-istorerouter +luci-theme-istorenas
META_DESCRIPTION:=为 iStoreOS 提供路由状态、网络配置、无线设置、DDNS、存储管理和应用商店入口。
META_DESCRIPTION.en:=Router dashboard for iStoreOS with network, Wi-Fi, DDNS, storage, and app store entry points.
META_AUTHOR:=Xiaobao
META_ARCH:=x86_64 aarch64
META_TAGS:=net system
META_LUCI_ENTRY:=/cgi-bin/luci/admin/istorerouter
META_WEBSITE:=https://github.com/linkease
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istoreos/

define Package/app-meta-istorerouter/prerm
#!/bin/sh

LANDING_PAGE="/cgi-bin/luci/admin/istorerouter"

if uci -q show istorenas.@login[0] >/dev/null; then
	CURRENT_LANDING_PAGE="$$(uci -q get istorenas.@login[0].landing_page)"
	if [ "$$CURRENT_LANDING_PAGE" = "$$LANDING_PAGE" ]; then
		uci -q delete istorenas.@login[0].landing_page || true
		uci -q commit istorenas || true
	fi
fi

rm -f /tmp/luci-indexcache /tmp/luci-indexcache.*
exit 0
endef

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
