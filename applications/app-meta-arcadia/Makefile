# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.1.0
PKG_RELEASE:=1
META_TITLE:=Arcadia 一站式代码自动化运维平台
META_TITLE.en:=Arcadia · One-Stop Code Automation & DevOps Platform
META_DEPENDS:=+luci-app-arcadia +luci-i18n-arcadia-zh-cn +docker-deps
META_DESCRIPTION:=写脚本、跑定时任务、服务托管、消息聚合、AI Agent 运行基座，一个面板搞定全流程
META_DESCRIPTION.en:=Script writing, scheduled task execution, service hosting, message aggregation, and AI Agent runtime infrastructure—all managed through a single dashboard for the entire workflow
META_AUTHOR:=SuperManito
META_ARCH:=x86_64 aarch64
META_TAGS:=net tool
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/arcadia
META_WEBSITE:=https://arcadia.cool

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
