# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=25.1.24
PKG_RELEASE:=20250902
META_TITLE:=皎月连内网穿透
META_DEPENDS:=+luci-app-natpierce
META_DESCRIPTION:=皎月连一键内网穿透是一款纯P2P连接软件，能够组建虚拟局域网或是将本地局域网内的主机端口直接映射到远程主机。
META_AUTHOR:=皎月连
META_TAGS:=networking service
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/natpierce
META_WEBSITE:=https://www.natpierce.cn/
META_ARCH:=all #luci应用是all 但luci下载的二进制程序支持 x86_64 aarch64 armv7 mips mipsel 下载在安装插件的初始化过程对于不支持的架构会有错误提示 如果istore需要严格控制架构 可以更改

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature
