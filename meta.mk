#
# Copyright (C) 2021 jjm2473 <jjm2473@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

META_NAME?=$(notdir ${CURDIR})
META_BASENAME?=$(word 3,$(subst -, ,$(META_NAME)))

PKG_NAME?=$(META_NAME)
PKG_RELEASE?=1

PKG_MAINTAINER:=$(META_AUTHOR)

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

escape_json=$(call qstrip,$(subst ",\\\",$(subst \,\\\\\\\\,$(1))))
META_ESCAPED_TITLE:=$(call escape_json,$(META_TITLE))
META_ESCAPED_DESCRIPTION:=$(call escape_json,$(META_DESCRIPTION))

define Package/$(PKG_NAME)
  SECTION:=meta
  CATEGORY:=Metadata
  TITLE:=$(META_TITLE)
  DEPENDS:=$(META_DEPENDS)
  VERSION:=$(PKG_VERSION)
  PKGARCH:=all
endef

ifneq ($(META_DESCRIPTION),)
 define Package/$(PKG_NAME)/description
   $(strip $(META_DESCRIPTION))
 endef
endif

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/opkg/meta
	if [ -f ./logo.png ]; then \
		$(INSTALL_DATA) ./logo.png $(1)/usr/lib/opkg/meta/$(META_BASENAME).png ; \
	fi;
	echo "{\"name\":\"$(META_BASENAME)\",\"title\":\"$(META_ESCAPED_TITLE)\",\
		\"entry\":\"$(META_LUCI_ENTRY)\",\"author\":\"$(META_AUTHOR)\",\
		\"website\":\"$(META_WEBSITE)\",\
		\"description\":\"$(META_ESCAPED_DESCRIPTION)\",\"tags\":\
		[$(patsubst %$(comma),%,$(subst $(space),,$(foreach tag,$(META_TAGS),\"$(tag)\"$(comma))))]}" \
		> $(1)/usr/lib/opkg/meta/$(META_BASENAME).json
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
