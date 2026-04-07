# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.9
PKG_RELEASE:=1

META_TITLE:=PicoClaw AI 管理器
META_TITLE.en:=PicoClaw AI Manager
META_DEPENDS:=+luci-app-picoclaw
META_DESCRIPTION:=PicoClaw 轻量级AI网关的LuCI管理界面。支持服务监控、配置编辑、频道管理、对话聊天、硬件控制(GPIO/USB)、技能系统和定时任务，支持中英日德葡5种语言。
META_DESCRIPTION.en:=LuCI management interface for PicoClaw AI assistant. Features: service monitoring, config editing, channel management, chat, hardware control, skills system, cron jobs, 5-language i18n.
META_AUTHOR:=GennKann
META_TAGS:=ai tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/picoclaw
META_WEBSITE:=https://github.com/sipeed/picoclaw
META_TUTORIAL:=https://github.com/GennKann/luci-app-picoclaw#readme

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
