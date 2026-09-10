# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0
PKG_RELEASE:=2
META_TITLE:=AgentFlow(KaiPro)
META_DEPENDS:=+luci-app-agentflow +luci-i18n-agentflow-zh-cn +agentflow +mise
META_DESCRIPTION:=统一管理多个Agent，从并行开发、多端联调到 AI 修复的完整闭环。
META_DESCRIPTION.en:=Unified management of multiple Agents, from parallel development, multi-terminal debugging to AI repair complete closed loop.
META_AUTHOR:=mikebrady
META_TAGS:=ai
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/agentflow
META_WEBSITE:=https://agentflow.geili.ai/

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
